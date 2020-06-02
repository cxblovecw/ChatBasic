import 'package:flutter/material.dart';
class Label extends StatefulWidget {
  String text;
  Color fontColor;
  double fontSize;
  Color color;
  EdgeInsets padding;
  EdgeInsets marigin;
  Label(this.text,{this.fontSize=12,this.fontColor=Colors.black87,this.color=Colors.blueAccent,this.marigin,this.padding});
  @override
  _LabelState createState() => _LabelState();
}

class _LabelState extends State<Label> {
  @override
  void initState() {
    super.initState();
    widget.marigin=widget.marigin==null?EdgeInsets.only(right:15,bottom: 10):widget.marigin;
    widget.padding=widget.padding==null?EdgeInsets.all(5):widget.padding;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      margin: widget.marigin,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(widget.text,style: TextStyle(
        color: widget.fontColor,
        fontSize: widget.fontSize,
      ),),
    );
  }
}