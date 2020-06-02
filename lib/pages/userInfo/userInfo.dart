import 'package:ChatBasic/components/Avatar.dart';
import 'package:ChatBasic/components/ButtonWithText.dart';
import 'package:ChatBasic/components/Label.dart';
import 'package:flutter/material.dart';
class UserInfoPage extends StatefulWidget {
  UserInfoPage();
  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black54), onPressed: (){
          Navigator.pop(context);
        }),
        backgroundColor:Colors.white,
        elevation: 0, 
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(width: 56),
                Avatar(text: "Nicko",size: 80,),
                IconButton(icon: Icon(Icons.add_circle_outline,size: 40,color:Colors.grey), onPressed: (){
            }),
            ],
            ),
            Container(height: 8),
            Text("Nicko"),
            Container(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("+86 1332233223"),Container(width: 5),
                ButtonWithText(Icon(Icons.filter_none,size: 15),padding: EdgeInsets.only(top: 8),)
              ],
            ),
            Wrap(
              children: <Widget>[
                Label("#技术团队"),
                Label("#CTO"),
                Label("#运维"),
                Label("#测试"),
                Label("#印度尼西亚"),
                Label("#English"),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.green
                  ),
                  child: Icon(Icons.add,color: Colors.black87,),
                ),
                )
              ],
            ),
                ],
              ),
            ),
            Expanded(child: Container(
              padding: EdgeInsets.fromLTRB(30, 20,30,40),
              decoration: BoxDecoration(
                color: Color.fromRGBO(155,155,155,0.1)
              ),
              child: Wrap(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.vertical_align_top,size: 30,),Container(width: 5,),
                      Text("置顶",style: TextStyle(fontSize: 20),),Expanded(child: Container()),Switch(value: true, onChanged: (value){})
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.notifications_off,size: 30,),Container(width: 5,),
                      Text("免打扰",style: TextStyle(fontSize: 20),),Expanded(child: Container()),Switch(value: true, onChanged: (value){})
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("加入快捷菜单栏",style: TextStyle(fontSize: 20),),Expanded(child: Container()),Switch(value: true, onChanged: (value){})
                    ],
                  ),
                ],
              ),
            )),
            Expanded(
              child:GestureDetector(
                onTap: (){},
                child: Container(
                  width: double.infinity,
                  color: Color.fromRGBO(155,155,155,0.1),
                  child: Center(child: Text("清空聊天信息(18.33M)",style: TextStyle(color:Colors.blue,fontSize: 20),),),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}