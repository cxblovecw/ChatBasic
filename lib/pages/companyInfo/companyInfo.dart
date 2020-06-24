import 'package:ChatBasic/components/Avatar.dart';
import 'package:ChatBasic/components/ButtonWithText.dart';
import 'package:flutter/material.dart';

class CompanyInfoPage extends StatefulWidget {
  int groupId;
  String company;
  bool isTop=false;
  bool avoidDisturb=false;
  bool addShortcutMene=false;
  @override
  _CompanyInfoPageState createState() => _CompanyInfoPageState();
}

class _CompanyInfoPageState extends State<CompanyInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black54),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  Text("本能管家科技有限公司",
                      style: TextStyle(color: Colors.black87, fontSize: 20)),
                  Container(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("群号 1332233223",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 14)),
                      Container(width: 5),
                      GestureDetector(
                        child: Icon(Icons.filter_none,
                            size: 18, color: Colors.grey),
                        onTap: () {
                          print("复制粘贴");
                        },
                      )
                    ],
                  ),
                  Container(height: 5),
                  Text("和蔼可亲一家人，全都是啊.......",
                      style: TextStyle(color: Colors.black54, fontSize: 14)),
                  Container(height: 5),
                  Row(
                    children:<Widget>[GestureDetector(
                    onTap: () {
                      print("查看全部成员");
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 15,bottom: 10),
                      width: 75,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(155, 155, 155, 0.1)),
                      child: Row(
                        children: <Widget>[
                          Text("48人",style: TextStyle(color: Colors.grey),),
                          Icon(Icons.chevron_right,color: Colors.grey,)
                        ],
                      ),
                    ),
                  )],
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      children: <Widget>[
                        Container(child: Avatar(text: "Nicko",size: 35,),),Expanded(child: Container()),
                        Container(child: Avatar(text: "Nicko",size: 35,),),Expanded(child: Container()),
                        Container(child: Avatar(text: "Nicko",size: 35,),),Expanded(child: Container()),
                        Container(child: Avatar(text: "Nicko",size: 35,),),Expanded(child: Container()),
                        Container(child: Avatar(text: "Nicko",size: 35,),),Expanded(child: Container()),
                        Container(child: Avatar(text: "Nicko",size: 35,),),
                        Container(width: 10,),
                        GestureDetector(
                          onTap: (){
                            print("添加成员");
                          },
                          child: Icon(Icons.add_circle_outline,size: 30,),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.black12),
                      borderRadius: BorderRadius.circular(20),
                      color:Color.fromRGBO(155, 155,155,0.08)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("群公告",style: TextStyle(color: Colors.black54,fontSize: 15),),
                        Container(height: 10),
                        Text(
                            "大家在疫情期间要多喝水多洗手多吃蔬菜水果少聚集自我隔离14天后才能申请进入公司。五一假期放假时间为5.1-5.6",style: TextStyle(color: Colors.black54,fontSize: 14),)
                      ],
                    ),
                  )
                
                ],
              ),
            ),
            Container(height: 15,),
            Expanded(
              flex: 2,
                child: Container(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 40),
              decoration:
                  BoxDecoration(color: Color.fromRGBO(155, 155, 155, 0.1)),
              child: Wrap(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.vertical_align_top,
                        size: 30,
                        color: Colors.black54
                      ),
                      Container(
                        width: 5,
                      ),
                      Text(
                        "置顶",
                        style: TextStyle(fontSize: 20,color: Colors.black54),
                      ),
                      Expanded(child: Container()),
                      Switch(value: widget.isTop, onChanged: (value) {
                        setState(() {
                          widget.isTop=!widget.isTop;
                        });
                        if(value){print("置顶");}else{print("取消置顶");}
                      })
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.notifications_off,
                        size: 30,
                        color: Colors.black54
                      ),
                      Container(
                        width: 5,
                      ),
                      Text(
                        "免打扰",
                        style: TextStyle(fontSize: 20,color: Colors.black54),
                      ),
                      Expanded(child: Container()),
                      Switch(value: widget.avoidDisturb, onChanged: (value) {
                        setState(() {
                          widget.avoidDisturb=!widget.avoidDisturb;
                        });
                         if(value){print("免打扰");}else{print("取消免打扰");}
                      })
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "加入快捷菜单栏",
                        style: TextStyle(fontSize: 20,color: Colors.black54),
                      ),
                      Expanded(child: Container()),
                      Switch(value: widget.addShortcutMene, onChanged: (value) {
                        setState(() {
                          widget.addShortcutMene=!widget.addShortcutMene;
                        });
                         if(value){print("加入快捷菜单栏");}else{print("取消加入快捷菜单栏");}
                      })
                    ],
                  ),
                ],
              ),
            )),
            Expanded(
              flex: 1,
                child: GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                color: Color.fromRGBO(155, 155, 155, 0.1),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          print("清空聊天记录");
                        },
                        child: Text(
                          "清空聊天信息(18.33M)",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        )),
                    Container(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("退出群聊");
                      },
                      child: Text(
                        "退出群聊",
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
