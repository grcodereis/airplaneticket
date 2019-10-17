import 'package:flutter/material.dart';

class BtnWay extends StatelessWidget {

  final Function onTap;
  final String label;
  final Color color;
  final IconData iconData;

  const BtnWay({Key key, this.onTap, this.label, this.color, this.iconData}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        height: 50,
        width: 160,
        decoration: BoxDecoration(
          color: color.withOpacity(0.3),
          borderRadius: BorderRadius.all(
            Radius.circular(25)
          )
        ),

        child: Row(
          children: <Widget>[
            SizedBox(width: 10),
            Container(
              width: 30,
              height: 30,
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
              width: 90,
              child: Text(label,
              style: TextStyle(color: color,fontSize: 15,fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}