part of '../message.dart';

class MessageAppBar extends StatefulWidget {
  @override
  _MessageAppBarState createState() => _MessageAppBarState();
}

class _MessageAppBarState extends State<MessageAppBar> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      // color: Colors.red,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 40, 10,0),
      child: Row(
        children: <Widget>[
          // Container(
          //   width: 50,
          //   height: 50,
          //   margin: EdgeInsets.only(right: 10),
          //   decoration: BoxDecoration(
          //     color: Color.fromRGBO(0, 0, 255, 0.8),
          //     borderRadius: BorderRadius.circular(25)
          //   ),
          //   child: Center(child: Text("WA",style: TextStyle(color: Colors.white),),),
          // ),
          Avatar(text: "WA",backgroundColor: Color.fromRGBO(0, 0, 255, 0.8)),
          Container(width: 10),
          GestureDetector(
            child: Row(
              children: <Widget>[
                Text("消息",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
          Expanded(child: Container()),
          GestureDetector(child: Icon(Icons.person_add),),
          Container(width: 10),
          GestureDetector(child: Icon(Icons.search),),
          Container(width: 10),
          GestureDetector(child: Icon(Icons.add),)
        ],
      ),
    );
  }
}