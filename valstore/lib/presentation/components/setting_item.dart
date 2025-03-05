import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final String settingName;
  final String? tailName;
  final Function() onClickSetting;

  const SettingItem({
    super.key,
    required this.settingName,
    required this.onClickSetting, this.tailName
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClickSetting,
      child: SizedBox(
        width: double.maxFinite,
        height: 40,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(settingName, style: const TextStyle(fontSize : 16)),
            const Spacer(flex: 1,),
            tailName != null ? Text("$tailName", style: const TextStyle(fontSize : 16)) : Container(),
            const Padding(padding: EdgeInsets.only(left: 8)),
            const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }
}