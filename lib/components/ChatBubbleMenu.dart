import 'package:ChatBasic/components/ButtonWithText.dart';
import 'package:flutter/material.dart';
class ChatBubbleMenu extends StatefulWidget {
  double bottom;
  double left;
  double right;
  double top;
  double messageId;
  double opacity;
  
  ChatBubbleMenu(this.messageId,{this.top=0,this.opacity=0});
  @override
  _ChatBubbleMenuState createState() => _ChatBubbleMenuState();
}

class _ChatBubbleMenuState extends State<ChatBubbleMenu> {
  fadeOut(){
    setState(() {
      widget.opacity=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Positioned(
      left: width*0.1,
      top: widget.top,
      child: Opacity(opacity:widget.opacity,
      child:Container(
        margin: EdgeInsets.fromLTRB(15, 20,15,5),
        width: 0.8*width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(width: 1,color:Color.fromRGBO(0,0,155,0.4),)
        ),
      child:Wrap(children: <Widget>[
        Container(
          padding: EdgeInsets.all(15),
          child: Wrap(
          children: <Widget>[
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("加入待办"),
              ),
              onTap: (){
                print("加入待办");
                fadeOut();
              },
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("转发"),
              ),
              onTap: (){},
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("转发"),
              ),
              onTap: (){},
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("转发"),
              ),
              onTap: (){},
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("转发"),
              ),
              onTap: (){},
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("转发"),
              ),
              onTap: (){},
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("转发"),
              ),
              onTap: (){},
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("转发"),
              ),
              onTap: (){},
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("转发"),
              ),
              onTap: (){},
            ),
        ],
        ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20) ,bottomRight: Radius.circular(20)),
          color:Color.fromRGBO(0,0,155,0.4)
          ),
          child: Row(
          children: <Widget>[
            Expanded(child: ButtonWithText(Icon(Icons.pets)),),
            Expanded(child: ButtonWithText(Icon(Icons.pets)),),
            Expanded(child: ButtonWithText(Icon(Icons.pets)),),
            Expanded(child: ButtonWithText(Icon(Icons.pets)),),
            Expanded(child: ButtonWithText(Icon(Icons.pets)),),
            Expanded(child: ButtonWithText(Icon(Icons.pets)),),
            Expanded(child: ButtonWithText(Icon(Icons.pets)),),
            Expanded(child: ButtonWithText(Icon(Icons.pets)),),
          ],
        ),
        )
      ],) 
    ))
    );
  }
}