import 'package:airplane/components/btnWay.dart';
import 'package:flutter/material.dart';

class SelectWay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Select the way", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                BtnWay(
                  label: "ROUND TRIP",
                  iconData: Icons.swap_horiz,
                  color: Color(0xFFF00d5d8),
                ),
                BtnWay(
                  label: "ONE WAY",
                  iconData: Icons.trending_flat,
                  color: Color(0xFFFababbc),
                )
              ],
            )
          ],
        ),
    );
  }
}