import 'package:flutter/material.dart';

class BtnPassengers extends StatelessWidget {
  final Function onTap;
  final String label;
  final String title;
  final Color color;
  final IconData iconData;

  const BtnPassengers(
      {Key key, this.onTap, this.label, this.title, this.color, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,style: TextStyle(color: Color(0xFFFa9a9ba))),
          SizedBox(height: 4),
          Container(
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            height: 55,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5)
              )
            ),

            child: Row(
              children: <Widget>[
                SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(14)
                    )
                  ),
                  child: Icon(iconData, color: Colors.white,size: 18),
                ),
                SizedBox(width: 5),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  child: Text(label,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
