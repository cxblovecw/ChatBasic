part of  '../chat.dart';
class ChatDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      width: 80,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ButtonWithText(
            Icon(Icons.stars),
            text: "收藏",
            onTap: (){
              print("收藏");
            },
            margin: EdgeInsets.only(bottom: 20),
          ),
          ButtonWithText(
            Icon(Icons.add_alert),
            text: "Ping",
            onTap: (){
              print("叮");
            },
            margin: EdgeInsets.only(bottom: 20),
          ),
          ButtonWithText(
            Icon(Icons.label_outline),
            text:"便签",
            onTap: (){
              print("便签");
            },
          )
        ],
      ),
    );
  }
}