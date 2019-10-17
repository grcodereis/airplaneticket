import 'package:airplane/components/recommendationItem.dart';
import 'package:airplane/screens/reservations.dart';
import 'package:flutter/material.dart';

class Recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Recommended for you",
          style: TextStyle(color: Colors.black,fontSize: 20)),
          SizedBox(height: 14),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RecommendationItem(
                  title: "nome",
                  price: "\$ 999",
                  color: Color(0xFFFfe8db9),
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Reservations(color: Color(0xFFFfe8db9))));
                  },
                ),
                RecommendationItem(
                  title: "nome",
                  price: "\$ 999",
                  color: Color(0xFFF00ccff),
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Reservations(color: Color(0xFFF00ccff))));
                  }
                ),
                RecommendationItem(
                  title: "nome",
                  price: "\$ 999",
                  color: Color(0xFFFffdb83),
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Reservations(color: Color(0xFFFffdb83))));
                  }
                ),
                RecommendationItem(
                  title: "nome",
                  price: "\$ 999",
                  color: Color(0xFFFaebddd0),
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Reservations(color: Color(0xFFFaebddd0))));
                  }
                )
              ],
            ),
          )
        ],
    );
  }
}