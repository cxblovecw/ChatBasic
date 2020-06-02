import 'package:flutter/material.dart';

class ChatBubble extends StatefulWidget {
  String text;
  double fontSize;
  double bottomLeft;
  double bottomRight;
  double topLeft;
  double topRight;
  Color color;
  bool isAnswer;
  double previousFontSize;
  String previous;
  double maxWidth;
  ChatBubble(this.text,
      {this.bottomLeft = 100,
      this.bottomRight = 100,
      this.topLeft = 100,
      this.topRight = 100,
      this.isAnswer = false,
      this.previous = "",
      this.color=Colors.white,
      this.fontSize=16,
      this.previousFontSize=12,
      this.maxWidth=240
      });
  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          constraints: BoxConstraints(minHeight: 60, maxWidth: widget.maxWidth),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5.0, 5.0), 
                    blurRadius: 15.0, 
                    spreadRadius: 1.0 
                    )
              ],
              color: widget.color,
              borderRadius: BorderRadius.only(
                bottomLeft:
                    Radius.circular(!widget.isAnswer ? widget.bottomLeft : 15),
                bottomRight: Radius.circular(widget.bottomRight),
                topLeft:
                    Radius.circular(!widget.isAnswer ? widget.topLeft : 15),
                topRight: Radius.circular(widget.topRight),
              )),
          padding: EdgeInsets.fromLTRB(15, 10, 20, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // 回复信息 显示上一条信息
              widget.isAnswer
                  ? Wrap(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(width: 2,height: 12,color:Colors.blue,margin: EdgeInsets.only(right: 10),),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: widget.maxWidth*0.8
                           ),
                          child: Text(
                            widget.previous,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                TextStyle(color: Colors.black45, fontSize: widget.previousFontSize),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(155, 155, 155, 0.1),
                            borderRadius: BorderRadius.circular(8),
                            
                          ),
                        )
                        ],)
                      ],
                    )
                  : Wrap(),
              // 信息
              Container(
                  child: Text(
                widget.text,
                softWrap: true,
                style: TextStyle(fontSize: widget.fontSize, color: Colors.black54),
              )),
              // 底部按钮
              Wrap(
                children: <Widget>[
                  Icon(Icons.outlined_flag),
                  Icon(Icons.outlined_flag),
                  Icon(Icons.outlined_flag),
                ],
              )
            ],
          ),
        ),
        //时间
        Container(
          child: Text(
            "10:21 AM",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          padding: EdgeInsets.only(top: 5),
        ),
        Container(height: 5,)
      ],
    );
  }
}
