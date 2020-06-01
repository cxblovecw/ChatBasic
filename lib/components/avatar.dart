import 'dart:math';

import 'package:flutter/material.dart';

class Avatar extends StatefulWidget{
  static var random=new Random();
  String text;
  double fontSize;
  Color fontColor;
  double size;
  Color backgroundColor;
  bool isRandom;
  EdgeInsets padding=EdgeInsets.only();
  EdgeInsets margin=EdgeInsets.only(left: 10,right: 50);
  Avatar({this.text="默认",this.fontSize=20.0,this.fontColor=Colors.white,this.size=50.0,this.backgroundColor=Colors.blue,this.isRandom=false,this.padding,this.margin});
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    List<Color> colors=[
      Colors.grey,Colors.green,Colors.blue,Colors.lightBlue,Colors.pink,
      Colors.red,Colors.purple,Colors.tealAccent,
    ];
    var colorIndex=Avatar.random.nextInt(colors.length);
    return Container(
      width: widget.size,
      height: widget.size,
      padding: widget.padding,
      margin: widget.margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.size/2),
        color: widget.isRandom?colors[colorIndex]:widget.backgroundColor
      ),
      child: Center(child: Text(widget.text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: widget.fontColor,
          fontSize: widget.size*0.3
        ),),),
    );
  }
}