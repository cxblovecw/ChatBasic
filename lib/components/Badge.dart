import 'package:flutter/material.dart';
class Badge extends StatefulWidget {
  Color color;
  int number;
  double size;
  Badge({this.number=0,this.size=18.0,this.color=Colors.red});
  @override
  _BadgeState createState() => _BadgeState();
}

class _BadgeState extends State<Badge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size,
      height: widget.size,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(widget.size/2)
      ),
      child: Center(
        child:Text(widget.number>99?"99+":widget.number.toString(),
        style: TextStyle(
          fontSize: widget.number>99?widget.size*0.4:widget.size*0.6,
          color: Colors.white,
          fontWeight: FontWeight.bold),
        )),
    );
  }
}