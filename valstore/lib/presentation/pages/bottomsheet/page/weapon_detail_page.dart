
import 'package:cupertino_tabbar/cupertino_tabbar.dart' as tab_bar;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valstore/data/skin/model/weapon_skin_response.dart';
import 'package:valstore/presentation/base/base_widget.dart';
import 'package:video_player/video_player.dart';

class WeaponDetailPage extends StatefulWidget {
  final List<Level> weaponLevels;
  final WeaponSkinDetail weaponSkinDetail;
  final List<Chroma> chromaList;

  const WeaponDetailPage({super.key, required this.weaponLevels, required this.chromaList, required this.weaponSkinDetail});

  @override
  _WeaponDetailPageState createState() => _WeaponDetailPageState();
}

class _WeaponDetailPageState extends State<WeaponDetailPage> {
  int cupertinoLevelsBarIndex = 0;
  bool canSwitchLevelsBarIndex = true;

  late VideoPlayerController _controller;

  int cupertinoChromaListBarIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.weaponLevels[cupertinoLevelsBarIndex].streamedVideo ?? ''))
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * 0.7,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.start,
              widget.weaponSkinDetail.displayName ?? "",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              )
            ),
            const Padding(padding: EdgeInsets.only(bottom: 24)),
            tab_bar.CupertinoTabBar(
              allowExpand: true,
              const Color(0xFFd4d7dd),
              const Color(0xFFf7f7f7),
              widget.weaponLevels.map((item) => Text(
                "Level ${widget.weaponLevels.indexOf(item) + 1}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              )).toList(),
              () => cupertinoLevelsBarIndex, (int index) {
                if(canSwitchLevelsBarIndex) {
                  setState(() {
                    cupertinoLevelsBarIndex = index;
                    _controller.dispose();
                    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.weaponLevels[cupertinoLevelsBarIndex].streamedVideo ?? ''))
                      ..initialize().then((_) {
                        _controller.play();
                        setState(() {});
                      });
                  });
                }
              },
              useShadow: false,
              innerHorizontalPadding: 5,
            ),
            const Padding(padding: EdgeInsets.only(top: 16)),
            Card(
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
              clipBehavior: Clip.antiAlias,
              child: _controller.value.isInitialized ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ) : Container(),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 16)),
            tab_bar.CupertinoTabBar(
              allowExpand: true,
              const Color(0xFFd4d7dd),
              const Color(0xFFf7f7f7),
              widget.chromaList.map((item) => Text(
                "Chroma ${widget.chromaList.indexOf(item) + 1}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              )).toList(),
              () => cupertinoChromaListBarIndex, (int index) {
                setState(() {
                  canSwitchLevelsBarIndex = index == 0;
                  cupertinoChromaListBarIndex = index;
                  _controller.dispose();
                  _controller = VideoPlayerController.networkUrl(Uri.parse(widget.chromaList[cupertinoChromaListBarIndex].streamedVideo ?? ''))
                    ..initialize().then((_) {
                      _controller.play();
                      setState(() {});
                    });
                });
              },
              useShadow: false,
              innerHorizontalPadding: 5,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}