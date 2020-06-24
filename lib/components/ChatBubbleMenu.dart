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
      widget.top=999;
    });
  }
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Positioned(
      left: width*0.1,
      top: widget.top,
      child:Container(
        margin: EdgeInsets.fromLTRB(15, 20,15,5),
        width: 0.8*width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(width: 1,color:Color.fromRGBO(200,255,255,1),)
        ),
      child:Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
        Container(
          padding: EdgeInsets.only(top:15),
          child: Wrap(
          children: <Widget>[
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 20,bottom: 15),
                child: Text("转发"),
              ),
              onTap: (){
                print("转发");
                fadeOut();
              },
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20,bottom: 15),
                child: Text("PIN"),
              ),
              onTap: (){
                 print("PIN");
                 fadeOut();
              },
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20,bottom: 15),
                child: Text("复制"),
              ),
              onTap: (){
                print("复制");
                 fadeOut();
              },
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20,bottom: 15),
                child: Text("撤回"),
              ),
              onTap: (){
                print("撤回");
                 fadeOut();
              },
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20,bottom: 15),
                child: Text("删除"),
              ),
              onTap: (){
                print("删除");
                fadeOut();
              },
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20,bottom: 15),
                child: Text("加入待办"),
              ),
              onTap: (){
                print("加入待办");
                fadeOut();
              },
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 20,bottom: 15),
                child: Text("翻译"),
              ),
              onTap: (){
                print("翻译");
                fadeOut();
              },
            ),
            GestureDetector(
              child: Container(
               margin: EdgeInsets.only(left: 20,bottom: 15),
                child: Text("回复"),
              ),
              onTap: (){
                print("回复");
                fadeOut();
              },
            ),
        ],
        ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20) ,bottomRight: Radius.circular(20)),
          color:Color.fromRGBO(200,255,255,1)
          ),
          child: Row(
          children: <Widget>[
            Expanded(child: ButtonWithText(Icon(Icons.pets),onTap: (){print("操作1");fadeOut();},),),
            Expanded(child: ButtonWithText(Icon(Icons.pets),onTap: (){print("操作2");fadeOut();},),),
            Expanded(child: ButtonWithText(Icon(Icons.pets),onTap: (){print("操作3");fadeOut();},),),
            Expanded(child: ButtonWithText(Icon(Icons.pets),onTap: (){print("操作4");fadeOut();},),),
            Expanded(child: ButtonWithText(Icon(Icons.pets),onTap: (){print("操作5");fadeOut();},),),
            Expanded(child: ButtonWithText(Icon(Icons.pets),onTap: (){print("操作6");fadeOut();},),),
            Expanded(child: ButtonWithText(Icon(Icons.pets),onTap: (){print("操作7");fadeOut();},),),
            Expanded(child: ButtonWithText(Icon(Icons.pets),onTap: (){print("操作8");fadeOut();},),),
          ],
        ),
        )
      ],) 
    )
    );
  }
}