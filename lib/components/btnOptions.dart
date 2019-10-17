import 'package:flutter/material.dart';

class BtnOptions extends StatelessWidget {

  final Function onTap;
  final String label;
  final Color color;

  const BtnOptions({Key key, this.onTap, this.label, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          alignment: Alignment.center,
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            color: color.withOpacity(0.5),
            borderRadius: BorderRadius.all(
              Radius.circular(14)
            )
          ),
          child: Text(label,
          style:TextStyle(color: color,fontSize: 15,fontWeight: FontWeight.bold),
          ),
        ),
    );
  }
}