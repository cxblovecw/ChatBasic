import 'package:flutter/material.dart';
class ButtonWithText extends StatelessWidget {
  EdgeInsets padding;
  EdgeInsets margin;
  double fontSize;
  String text;
  Icon icon;
  Function onTap;
  Color color;
  MainAxisAlignment mainAxisAlignment;
  ButtonWithText(this.icon,{this.text="",this.padding,this.margin,this.mainAxisAlignment=MainAxisAlignment.center,this.fontSize=11,this.onTap,this.color=Colors.transparent});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: color
        ),
        child: Column(
          mainAxisAlignment: mainAxisAlignment,        
          children: <Widget>[
            icon,
            Text(text,style: TextStyle(fontSize: fontSize,))
          ],
        ),
      ),);
  }
}