import 'package:flutter/material.dart';
class ShowTime extends StatefulWidget {
  @override
  _ShowTimeState createState() => _ShowTimeState();
}

class _ShowTimeState extends State<ShowTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
      children: <Widget>[
        Container(width: 10),
        Expanded(child: Container(
          height: 1.5,
          color: Colors.black12,
        ),),
        Container(
          child: Text("2020.04.23 15:03:01 周四",style:TextStyle(color: Colors.black54,fontSize: 12),),
          margin: EdgeInsets.symmetric(horizontal: 20),
        ),
        Expanded(child: Container(
          height: 1.5,
          color: Colors.black12,
        ),),
        Container(width: 20,)
      ],
    ),
    );
  }
}