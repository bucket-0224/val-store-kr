
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/skin/model/skin_response.dart';

class BonusSkinCard extends StatelessWidget {
  final BonusSkinDataInfo item;
  final Function(String skinUUID) onClickItem;

  const BonusSkinCard({super.key, required this.item, required this.onClickItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      child: GestureDetector(
        onTap: () => onClickItem(item.uuid),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.only(bottom: 16)),
              Image.network(item.displayIcon, height: 80),
              const Padding(padding: EdgeInsets.only(bottom: 16)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.displayName,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 4)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/ic_valorant_point.png", width: 12, height: 12,),
                      const Padding(padding: EdgeInsets.only(left: 4)),
                      Text(
                        "${item.bonusStoreOffer.offer?.cost?.values.first ?? 0} VP",
                        style: const TextStyle(fontSize: 12, decoration : TextDecoration.lineThrough),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 8)),
                      Text(
                        "${item.bonusStoreOffer.discountPercent ?? 0} %",
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/ic_valorant_point.png", width: 16, height: 16,),
                      const Padding(padding: EdgeInsets.only(left: 4)),
                      Text(
                        "${item.bonusStoreOffer.discountCosts?.values.first?? 0} VP",
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 4)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}