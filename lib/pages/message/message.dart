import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:ChatBasic/components/avatar.dart';
import 'package:ChatBasic/pages/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../components/Badge.dart';
part './message-components/messageAppBar.dart';
part './message-components/messageItem.dart';



class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> with AutomaticKeepAliveClientMixin{
  List<Color> colors=[
    Colors.grey,Colors.green,Colors.blue,Colors.lightBlue,Colors.pink,
    Colors.red,Colors.purple,Colors.tealAccent,
  ];
  List<Color> colorList;
  var random=new Random();
  @override
  void initState() {
    super.initState();
    colorList=List.generate(colors.length, (index) => colors[random.nextInt(colors.length)]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MessageAppBar(),
          Expanded(
            child: ListView(
              children: <Widget>[
                MessageItem(name:"Nicko",message:"hello world hello dart hello world hello dart hello world hello dart ",time:"今天 14:10",avatarColor:colorList[0],isGroup: false,),
                MessageItem(name:"许小洁",message:"hello world hello dart hello world hello dart hello world hello dart ",time:"今天 14:10",avatarColor:colorList[1],isGroup: false),
                MessageItem(name:"本能管家科技有限公司",message:"许小洁:Lorem ipsum dolor sit amet,consectetur adipiscing elit ,sed do",time:"今天 14:10",avatarColor:colorList[2],isGroup: true),
              ],
          ))
        ],
      ),
    );
  }
  @override
  bool get wantKeepAlive => true;
}
