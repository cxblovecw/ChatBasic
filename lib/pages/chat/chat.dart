import 'package:flutter/material.dart';
part './chat-components/chatInput.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.chevron_left,color: Colors.black,), onPressed: (){
          Navigator.pop(context);
        }),
        title: Text("哈哈哈哈",style: TextStyle(color: Colors.black87),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.black87), onPressed: (){}),
          IconButton(icon: Icon(Icons.menu,color: Colors.black87), onPressed: (){})
        ],
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Column(
        children: <Widget>[
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(155,155,155,0.1)
            ),
            child: ListView(
            children: <Widget>[
              Text("X")
            ],
          ),
          )),
          Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                child: Row(
                children: <Widget>[
                  GestureDetector(
                    child: Icon(Icons.mic),
                    onTap: (){},
                  ),
                  Container(width: 10),
                  ChatInput(),
                  GestureDetector(
                    child:Icon(Icons.sentiment_satisfied),
                    onTap: (){},
                  ),
                  Container(width: 10,),
                  GestureDetector(
                    child:Icon(Icons.add_circle_outline),
                    onTap: (){},
                  ),
                ],
              ),
              ),
              Container(),
              Container(
                constraints: BoxConstraints(
                  minHeight: 60
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(155, 155, 155,0.1)
                ),
                child: Wrap(
                  children: <Widget>[
                    Row(
                    children: <Widget>[
                      Expanded(child: IconButton(icon: Icon(Icons.photo), onPressed: (){})),
                      Expanded(child: IconButton(icon: Icon(Icons.description), onPressed: (){})),
                      Expanded(child: IconButton(icon: Icon(Icons.video_call), onPressed: (){})),
                      Expanded(child: IconButton(icon: Icon(Icons.payment), onPressed: (){})),
                      Expanded(child: IconButton(icon: Icon(Icons.star_border), onPressed: (){})),
                    ],
                    ),
                    Center(child: Switch(value: true,activeColor: Colors.black87,onChanged: (value){}))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      ),
    );
  }
}