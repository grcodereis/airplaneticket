import 'package:airplane/components/btnPassengers.dart';
import 'package:flutter/material.dart';

class SelectOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              BtnPassengers(
                title: "Departure",
                label: "22 Oct, 2019",
                color: Color(0xFFFfeb578),
                iconData: Icons.today,
              ),
              BtnPassengers(
                title: "Return",
                label: "23 Nov, 2019",
                color: Color(0xFFF00d5d8),
                iconData: Icons.today,
              )
            ],
          ),
          SizedBox(height: 10),
           Row(
            children: <Widget>[
              BtnPassengers(
                title: "Passengers",
                label: "2 Adult",
                color: Color(0xFFFfe8db9),
                iconData: Icons.wc,
              ),
              BtnPassengers(
                title: "Class",
                label: "Economy",
                color: Color(0xFFF7d59ee),
                iconData: Icons.today,
              )
            ],
          )
        ],
    );
  }
}