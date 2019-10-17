import 'package:flutter/material.dart';

class RecommendationItem extends StatelessWidget {

  final String title;
  final String price;
  final Color color;
  final Function onTap;

  const RecommendationItem({Key key, this.title, this.price, this.color, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
      height: 200,
      width: 180,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(14)
        )
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            _icon(color),
            SizedBox(height: 16),
            Text("22 October 2019", style: TextStyle(color: Colors.white)),
            SizedBox(height: 14),
            _destination(),
            SizedBox(height: 10),
            _price(price)


        ],
      ),
    ),
    );
  }
}

Widget _price(String price){

  return Container(
    child: Row(
      children: <Widget>[
        Text(price,style: TextStyle(color: Colors.white,fontSize: 25)),
        SizedBox(width: 20),
        Icon(Icons.trending_flat,size: 32,color: Colors.white)
      ],
    ),
  );

}

Widget _destination(){
  return Container(
    child: Row(
      children: <Widget>[
        Text("SFO", 
        style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold)),
        SizedBox(width: 10),
        Icon(Icons.swap_horiz,size: 32,color: Colors.white),
        SizedBox(width: 10),
        Text("OSL", 
        style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

Widget _icon(Color color){

    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        )
      ),

      child: Icon(Icons.flight_takeoff,color: color,size: 32),
    );

}