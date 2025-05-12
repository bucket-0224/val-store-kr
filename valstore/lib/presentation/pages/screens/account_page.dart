import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valstore/presentation/base/base_widget.dart';
import 'package:valstore/presentation/components/setting_item.dart';
import 'package:valstore/presentation/viewmodel/main_viewmodel.dart';

import '../../util.dart';

class AccountPage extends StatefulWidget {
  final String title;
  final Future<void> Function() eventSignOut;

  const AccountPage({super.key, required this.title, required this.eventSignOut});

  @override
  State<StatefulWidget> createState() => AccountPageState(title: title, eventSignOut: eventSignOut);
}

class AccountPageState extends BaseStatefulWidget<MainViewModel> {
  AccountPageState({required this.title, required this.eventSignOut});

  final String title;
  final Future<void> Function() eventSignOut;

  void showRegionPicker(BuildContext context) async {
    await showModalBottomSheet<String>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Select Locale',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              ListView(
                shrinkWrap: true,
                children: ['kr', 'ap', 'na', 'eu'].map((region) {
                  return ListTile(
                    title: Text(region),
                    onTap: () => Navigator.pop(context, region),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    ).then((locale) => {
      if(locale != null) {
        viewModel.setLocale(locale)
      }
    });
  }

  @override
  Widget onBuildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              viewModel.isLoadingSetting ?  const SizedBox(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoActivityIndicator(),
                    Padding(padding: EdgeInsets.only(bottom: 4)),
                    Text(
                      '계정 정보 로딩 중..',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 16)),
                  ],
                ),
              ) : Container(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(viewModel.playerInfoResponse?.acct?.gameName != null ? "${viewModel.playerInfoResponse?.acct?.gameName ?? ""}#" : "", style: const TextStyle(fontSize : 16,),),
                  Text(viewModel.playerInfoResponse?.acct?.tagLine ?? "", style: const TextStyle(fontSize : 16, fontWeight: FontWeight.bold),)
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 8)),
              Container(
                  height: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: viewModel.playerCard != null ?
                          NetworkImage(viewModel.playerCard?.data.wideArt ?? "")
                              : NetworkImage(defaultPlayerCardPlaceHolderUrl),
                          fit: BoxFit.cover
                      )
                  )
              ),
              const Padding(padding: EdgeInsets.only(bottom: 24)),
              const Text("Settings", style: TextStyle(fontSize : 16, fontWeight: FontWeight.bold),),
              const Padding(padding: EdgeInsets.only(bottom: 8)),
              const Divider(),
              const Padding(padding: EdgeInsets.only(bottom: 8)),
              SettingItem(settingName: "Set Locale", tailName: viewModel.getLocale(), onClickSetting: () => showRegionPicker(context)),
              SettingItem(settingName: "Sign out", tailName: null, onClickSetting: () async {
                viewModel.signOut();
                await eventSignOut();
              }),
            ],
          ),
        ),
      ),
    );
  }
}