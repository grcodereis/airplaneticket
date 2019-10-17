import 'package:airplane/components/btnOptions.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            BtnOptions(
              label: "Flights",
              color: Color(0xFFFf89380),
            ),
             BtnOptions(
              label: "Train",
              color: Color(0xFFF9b9ba0),
            ),
             BtnOptions(
              label: "Bus",
              color: Color(0xFFF9b9ba0),
            ),
             BtnOptions(
              label: "Hotel",
              color: Color(0xFFF9b9ba0),
            )
        ],
      ),
    );
  }
}