import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:valstore/data/info/model/player_info_response.dart';
import 'package:valstore/data/match/model/match_history_detail_response.dart';
import 'package:valstore/data/skin/model/agent_response.dart';
import 'package:valstore/domain/load_out_usecase.dart';
import 'package:valstore/domain/match_usecase.dart';
import 'package:valstore/domain/player_info_usecase.dart';

import '../../data/entitlement/model/entitlement_response.dart';
import '../../data/skin/model/map_response.dart';
import '../../data/skin/model/player_card_response.dart';
import '../../data/skin/model/player_title_response.dart';
import '../../data/skin/model/skin_response.dart';
import '../../domain/entitlement_usecase.dart';
import '../../domain/skin_usecase.dart';
import '../../domain/storefront_usecase.dart';
import '../../domain/wallet_usecase.dart';
import '../util.dart';

class MainViewModel extends ChangeNotifier {
  final EntitlementUseCase entitlementUseCase;
  final StorefrontUseCase storefrontUseCase;
  final SkinUseCase skinUseCase;
  final WalletUseCase walletUseCase;
  final MatchUseCase matchUseCase;
  final LoadOutUseCase loadOutUseCase;
  final SharedPreferences sharedPreferences;
  final PlayerInfoUseCase playerInfoUseCase;

  final List<MapInfo> mapList = [];
  final List<SkinDataInfo> skinList = [];
  final List<MatchHistoryDetailInfoResponse> matchesInfoList = [];

  PlayerCardResponse? playerCard;
  PlayerTitleResponse? playerTitle;
  PlayerInfoResponse? playerInfoResponse;

  String remainingTimeText = "";
  bool hasSigned = false;

  bool isLoadingTodayShop = false;
  bool isLoadingMatchHistories = false;
  bool isLoadingSetting = false;

  List<int> walletBalances = [];

  int selectedIndex = 0;

  late String accessToken;
  late String idToken;

  MainViewModel(this.entitlementUseCase, this.storefrontUseCase, this.skinUseCase, this.walletUseCase, this.matchUseCase, this.sharedPreferences, this.loadOutUseCase, this.playerInfoUseCase);

  void startRemainingToRotation() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      final remainingTime = timeUntilNextRotationDays();

      remainingTimeText = "상점 초기화까지 남은 시간: ${remainingTime.inHours}시간 ${remainingTime.inMinutes.remainder(60)}분 ${remainingTime.inSeconds.remainder(60)}초";
      notifyListeners();
    });
  }

  void onSelectIndex(int index, Function(String message) onMessage) {
    if(hasSigned) {
      selectedIndex = index;
      notifyListeners();
    } else {
      onMessage("로그인을 진행해주세요.");
    }
  }

  String getLocale() {
    return sharedPreferences.getString("locale") ?? "ap";
  }

  Future<void> setLocale(String locale) async {
    await sharedPreferences.setString("locale", locale);
  }

  Future<void> getPlayerInfo() async {
    playerInfoResponse = await playerInfoUseCase.getPlayerInfo(accessToken);
    notifyListeners();
  }

  Future<void> getMatchHistories(String entitleToken, Function(String message) onMessage) async {
    try {
      if(!isLoadingMatchHistories) {
        isLoadingMatchHistories = true;
        notifyListeners();

        await getMapsInfo();

        await matchUseCase.getMatchHistories(
            accessToken,
            entitleToken,
            getLocale(),
            extractPlayerUUID(idToken) ?? ""
        ).then((itemData) async {
          matchesInfoList.clear();

          for(var matchHistory in itemData.history) {
            MatchHistoryDetailResponse matchHistoryDetail = await matchUseCase.getDetailMatchHistory(accessToken, entitleToken, getLocale(), matchHistory.matchID);

            Player matchPlayedUser = matchHistoryDetail.players.where((item) => item.subject == extractPlayerUUID(idToken)).toList()[0];
            String subject = matchPlayedUser.characterId;
            AgentResponse agentResponse = await skinUseCase.getAgentInfo(subject);
            List<MapInfo> selectedMaps = mapList.where((map) => map.mapUrl == matchHistoryDetail.matchInfo.mapId).toList();

            matchesInfoList.add(
                MatchHistoryDetailInfoResponse(
                    player: matchPlayedUser,
                    mapInfo: selectedMaps.isNotEmpty ? selectedMaps[0] : null,
                    playedCharacterAvatar: agentResponse.data.displayIcon,
                    matchInfo: matchHistoryDetail.matchInfo,
                    players: matchHistoryDetail.players,
                    bots: matchHistoryDetail.bots,
                    coaches: matchHistoryDetail.coaches,
                    teams: matchHistoryDetail.teams,
                    roundResults: matchHistoryDetail.roundResults,
                    kills: matchHistoryDetail.kills
                )
            );
          }

          isLoadingMatchHistories = false;
          notifyListeners();
        });
      }
    }catch(err) {
      matchesInfoList.clear();
      isLoadingMatchHistories = false;
      notifyListeners();

      onMessage("오류가 발생했습니다.");
    }
  }

  Future<void> getMapsInfo() async {
    await skinUseCase.getMapsInfo().then((mapRes) => {
      mapList.addAll(mapRes.data)
    });
  }

  Future<void> getWalletStatus(String entitleToken) async {
    await walletUseCase.getWalletStatus(
        accessToken,
        entitleToken,
        getLocale(),
        extractPlayerUUID(idToken) ?? ""
    ).then((itemData) async {
      walletBalances = itemData.balances?.values.toList() ?? [];
      notifyListeners();
    });
  }

  Future<void> fetchValorantApisByIndex(Entitlement token, Function(String message) onMessage) async {
    switch(selectedIndex) {
      case 0:
        await refreshStorefront(token.entitlementToken, (message) {
          onMessage(message);
        });
        break;
      case 1:
        await getMatchHistories(token.entitlementToken, (message) {
          onMessage(message);
        });
        break;
      case 2:
        await getPlayerLoadOut(token.entitlementToken, (message) {
          onMessage(message);
        });
        break;
    }
  }

  Future<void> getPlayerLoadOut(String entitleToken, Function(String message) onMessage) async {
    try{
      if(!isLoadingSetting) {
        isLoadingSetting = true;
        notifyListeners();

        await getPlayerInfo();

        await loadOutUseCase.getPlayerLoadOut(
            accessToken,
            entitleToken,
            getLocale(),
            extractPlayerUUID(idToken) ?? ""
        ).then((data) async {
          if(data.identity?.playerCardId != "00000000-0000-0000-0000-000000000000") {
            playerCard = await skinUseCase.getPlayerCard(data.identity?.playerCardId ?? "");
          }

          if(data.identity?.playerTitleId != "00000000-0000-0000-0000-000000000000") {
            playerTitle = await skinUseCase.getPlayerTitle(data.identity?.playerTitleId ?? "");
          }
        });

        isLoadingSetting = false;
        notifyListeners();
      }
    }catch(err){
      isLoadingSetting = false;
      notifyListeners();

      print("err : ${err}");

      onMessage("오류가 발생했습니다.");
    }
  }

  Future<void> getEntitleToken(String accessToken, String idToken, Function(Entitlement token) function, Function(String errorContent) onError) async {
    try {
      await entitlementUseCase.getEntitlementToken(accessToken).then((token) async {
        this.accessToken = accessToken;
        this.idToken = idToken;
        hasSigned = true;

        await sharedPreferences.setString("accessToken", accessToken);
        await sharedPreferences.setString("idToken", idToken);

        function(token);

        notifyListeners();
      });
    }on DioException catch(error) {
      if(error.response?.statusCode == 401) {
        onError("로그인 토큰이 만료되었습니다. 재로그인 해주세요.");
      } else {
        onError("오류가 발생했습니다 : ${error.response?.statusCode ?? 0}");
      }

      hasSigned = false;
      accessToken = "";
      idToken = "";

      skinList.clear();
      notifyListeners();
    }
  }

  Future<void> refreshStorefront(String entitleToken, Function(String content) onMessage) async {
    try {
      if(!isLoadingTodayShop) {
        isLoadingTodayShop = true;
        notifyListeners();

        await getWalletStatus(entitleToken);
        await storefrontUseCase.getStorefront(
            accessToken,
            entitleToken,
            getLocale(),
            extractPlayerUUID(idToken) ?? ""
        ).then((itemData) async {
          skinList.clear();

          if (itemData.skinsPanelLayout?.singleItemStoreOffers != null) {
            for (var item in itemData.skinsPanelLayout!.singleItemStoreOffers!) {
              var data = await skinUseCase.getSkinInfo(item.rewards?[0].itemID ?? "");

              skinList.add(
                  SkinDataInfo(
                      uuid: data.data.uuid,
                      displayName: data.data.displayName,
                      displayIcon: data.data.displayIcon,
                      assetPath: data.data.assetPath,
                      singleItemStoreOffer: item,
                      startedDate: item.startDate ?? ""
                  )
              );
            }
          }

          isLoadingTodayShop = false;
          notifyListeners();
          onMessage("상점 데이터를 불러왔습니다.");
        });
      }
    }catch(err){
      isLoadingTodayShop = false;
      notifyListeners();
      onMessage("오류가 발생했습니다.");
    }
  }
}