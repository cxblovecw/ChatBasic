import 'package:ChatBasic/components/ButtonWithText.dart';
import 'package:ChatBasic/components/ChatBubble.dart';
import 'package:ChatBasic/components/ChatBubbleMenu.dart';
import 'package:ChatBasic/components/avatar.dart';
import 'package:ChatBasic/components/showTime.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ChatBasic/pages/companyInfo/companyInfo.dart';
import 'package:ChatBasic/pages/userInfo/userInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
part './chat-components/chatInput.dart';
part './chat-components/chatDrawer.dart';

class ChatPage extends StatefulWidget {
  bool isGroup;
  int account;
  bool showDrawer=false;
  ChatPage({this.isGroup = false});
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  double opacity = 0;
  double top = 999;
  SlidableController sc=SlidableController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Slidable(
      controller: sc,
      actionExtentRatio: 0.25,
      actionPane: SlidableDrawerActionPane(),
      secondaryActions: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border(left: BorderSide(width: 2,color: Colors.black26)),
            color: Colors.white,
          ),
          padding: EdgeInsets.only(top: 60),
          child: Column(
          children: <Widget>[
            ButtonWithText(Icon(Icons.fiber_pin)),
            ButtonWithText(Icon(Icons.star_border)),
            ButtonWithText(Icon(Icons.colorize)),
            ButtonWithText(Icon(Icons.vertical_align_top)),
          ],
        ),
        )
      ],
      child: Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Colors.white, 
            leading: IconButton(
                icon: Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: GestureDetector(
              onTap: () {
                if (widget.isGroup) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return CompanyInfoPage();
                  }));
                } else {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return UserInfoPage();
                  }));
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(width: 8),
                  widget.isGroup ? Container() : Avatar(),
                  Text(
                    "Nicko",
                    style: TextStyle(color: Colors.black54, fontSize: 25),
                  ),
                  Image.asset(
                  'assets/images/aa.jpg',
                  width: 150,
                  height: 150,
                  alignment: Alignment.centerLeft,
                ),
                ],
              ),
            ),
            actions: <Widget>[
              GestureDetector(
                  child: Icon(Icons.search, color: Colors.black87),
                  onTap: () {}),
              Container(
                width: 8,
              ),
              Builder(builder: (context){
                return GestureDetector(
                  child: Icon(Icons.menu, color: Colors.black87), onTap: () {
                    print(sc.activeState);
                    if (sc?.activeState == null)
                    Slidable.of(context).open(actionType: SlideActionType.secondary);
                  else
                    Slidable.of(context).close();
              });
              }),
              Container(
                width: 8,
              )
            ],
          ),
          preferredSize: Size.fromHeight(60)),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          setState(() {
            // opacity = 0;
            top=9999;
          });
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(155, 155, 155, 0.1)),
                  child: ListView(
                    children: <Widget>[
                      ShowTime(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Avatar(
                            size: width * 0.15,
                          ),
                          Container(width: 5),
                          ChatBubble("哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈",
                              bottomLeft: 0, maxWidth: width * 0.8),
                        ],
                      ),
                      GestureDetector(
                        onLongPressStart: (value) {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            opacity = 1;
                            top = value.localPosition.dy;
                          });
                          print(value.globalPosition.dy);
                        },
                        child:Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 50,
                          ),
                          Expanded(child: Container()),
                          ChatBubble(
                            "哈哈哈",
                            bottomRight: 0,
                            topRight: 0,
                          ),
                        ],
                      )),

                      GestureDetector(
                        onLongPressStart: (value) {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            opacity = 1;
                            top = value.globalPosition.dy;
                          });
                          print(this.context.size.height);
                          print(value.globalPosition.dy);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ChatBubble(
                              "哈哈哈",
                              maxWidth: width * 0.8,
                              bottomRight: 0,
                              topRight: 0,
                              bottomLeft: 15,
                              topLeft: 15,
                              isAnswer: true,
                              previous:
                                  "Nicko:下次再约",
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onLongPressStart: (value) {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            opacity = 1;
                            top = value.globalPosition.dy-280;
                          });
                          print(this.context.size.height);
                          print(value.globalPosition.dy-280);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ChatBubble(
                              "哈哈哈",
                              maxWidth: width * 0.8,
                              bottomRight: 0,
                              topRight: 0,
                              bottomLeft: 15,
                              topLeft: 15,
                              isAnswer: true,
                              previous:
                                  "Nicko:下次再约",
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onLongPressStart: (value) {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            opacity = 1;
                            top = value.globalPosition.dy-280;
                          });
                          print(this.context.size.height);
                          print(value.globalPosition.dy-280);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ChatBubble(
                              "哈哈哈",
                              maxWidth: width * 0.8,
                              bottomRight: 0,
                              topRight: 0,
                              bottomLeft: 15,
                              topLeft: 15,
                              isAnswer: true,
                              previous:
                                  "Nicko:下次再约",
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onLongPressStart: (value) {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            opacity = 1;
                            top = value.globalPosition.dy-280;
                          });
                          print(this.context.size.height);
                          print(value.globalPosition.dy-280);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ChatBubble(
                              "哈哈哈",
                              maxWidth: width * 0.8,
                              bottomRight: 0,
                              topRight: 0,
                              bottomLeft: 15,
                              topLeft: 15,
                              isAnswer: true,
                              previous:
                                  "Nicko:下次再约",
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onLongPressStart: (value) {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            opacity = 1;
                            top = value.globalPosition.dy-280;
                          });
                          print(this.context.size.height);
                          print(value.globalPosition.dy-280);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ChatBubble(
                              "哈哈哈",
                              maxWidth: width * 0.8,
                              bottomRight: 0,
                              topRight: 0,
                              bottomLeft: 15,
                              topLeft: 15,
                              isAnswer: true,
                              previous:
                                  "Nicko:下次再约",
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onLongPressStart: (value) {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            opacity = 1;
                            top = value.globalPosition.dy-280;
                          });
                          print(this.context.size.height);
                          print(value.globalPosition.dy-280);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ChatBubble(
                              "哈哈哈",
                              maxWidth: width * 0.8,
                              bottomRight: 0,
                              topRight: 0,
                              bottomLeft: 15,
                              topLeft: 15,
                              isAnswer: true,
                              previous:
                                  "Nicko:下次再约",
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onLongPressStart: (value) {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            opacity = 1;
                            top = value.globalPosition.dy-280;
                          });
                          print(this.context.size.height);
                          print(value.globalPosition.dy-280);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ChatBubble(
                              "哈哈哈",
                              maxWidth: width * 0.8,
                              bottomRight: 0,
                              topRight: 0,
                              bottomLeft: 15,
                              topLeft: 15,
                              isAnswer: true,
                              previous:
                                  "Nicko:下次再约",
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onLongPressStart: (value) {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            opacity = 1;
                            top = value.globalPosition.dy-280;
                          });
                          print(this.context.size.height);
                          print(value.globalPosition.dy-280);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ChatBubble(
                              "哈哈哈",
                              maxWidth: width * 0.8,
                              bottomRight: 0,
                              topRight: 0,
                              bottomLeft: 15,
                              topLeft: 15,
                              isAnswer: true,
                              previous:
                                  "Nicko:下次再约",
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onLongPressStart: (value) {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            opacity = 1;
                            top = value.globalPosition.dy-280;
                          });
                          print(this.context.size.height);
                          print(value.globalPosition.dy-280);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ChatBubble(
                              "哈哈哈",
                              maxWidth: width * 0.8,
                              bottomRight: 0,
                              topRight: 0,
                              bottomLeft: 15,
                              topLeft: 15,
                              isAnswer: true,
                              previous:
                                  "Nicko:下次再约",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ChatBubbleMenu(10, opacity: opacity, top: top)
              ],
            )),
            Wrap(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(Icons.mic_none),
                        onTap: () {},
                      ),
                      Container(width: 10),
                      ChatInput(),
                      GestureDetector(
                        child: Icon(Icons.sentiment_satisfied),
                        onTap: () {},
                      ),
                      Container(
                        width: 10,
                      ),
                      GestureDetector(
                        child: Icon(Icons.add_circle_outline),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Container(),
                widget.isGroup
                    ? Container(
                        constraints: BoxConstraints(minHeight: 60),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(155, 155, 155, 0.1)),
                        child: Wrap(
                          children: <Widget>[
                            Container(height: 5,),
                            Row(
                              children: <Widget>[
                                
                                Expanded(
                                  child: ButtonWithText(
                                    Icon(Icons.photo),
                                    text: "图片",
                                    onTap: () {
                                      print("图片点击");
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ButtonWithText(
                                    Icon(Icons.description),
                                    text: "文档",
                                    onTap: () {
                                      print("文档点击");
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ButtonWithText(
                                    Icon(Icons.video_call),
                                    text: "会议",
                                    onTap: () {
                                      print("会议点击");
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ButtonWithText(
                                    Icon(Icons.payment),
                                    text: "红包",
                                    onTap: () {
                                      print("红包点击");
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: ButtonWithText(
                                    Icon(Icons.star_border),
                                    text: "收藏",
                                    onTap: () {
                                      print("收藏点击");
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Center(
                                child: Switch(
                                    value: true,
                                    activeColor: Colors.black87,
                                    onChanged: (value) {}))
                          ],
                        ),
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    ),);
  }
}
