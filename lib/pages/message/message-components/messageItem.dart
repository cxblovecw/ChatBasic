part of '../message.dart';
class MessageItem extends StatefulWidget {
  Color avatarColor;
  String name;
  String message;
  String time;
  bool ingone;
  int notRead;
  MessageItem({this.name,this.message,this.time,this.avatarColor,this.notRead=0,this.ingone=false});
  @override
  _MessageItemState createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  getName(String name){
    if(name.length==Utf8Encoder().convert(name).length){
      return name.substring(0,name.length>2?2:name.length);
    }else{
      if(name.length>4){
        return name.substring(0,2);
      }else{
        return name.length>2?name.substring(name.length-2,name.length):name;
      }
    }
  }
  @override 
  Widget build(BuildContext context) {
    var random=new Random();
    var randomNum=random.nextInt(155)+100;
    return GestureDetector(
      child: Container(
      height: 85,
      width: double.infinity,
      padding: EdgeInsets.only(left: 10,bottom: 15,right: 0),
      // color: Colors.yellow, 
      child: Row(
        children: <Widget>[
          Avatar(
            size: 60,
            text: getName(widget.name),
            backgroundColor: widget.avatarColor,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(
                  color: Colors.black12,
                  width: 1.5
                ))
              ),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Wrap(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(widget.name,style: TextStyle(fontSize: 17),overflow: TextOverflow.ellipsis,),
                    Expanded(child: Container()),
                    Text(widget.time,style: TextStyle(
                      color: Colors.black45
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(child:Text(widget.message,overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.7)
                    ))),
                    // Expanded(child: Container()),
                    Container(width: 50, child: Row(
                      children: <Widget>[
                        Expanded(child: Container(),),
                        widget.ingone?Icon(Icons.notifications_off,size: 20,color: Colors.grey,):Container(),
                        Badge(number: widget.notRead),
                      ],
                    ),),
                  ],
                ),
                Container(height: 10,)
              ],
            ),
            ),
          )
        ],
       ),
      ),
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder:(BuildContext context){
            return ChatPage();
          }));
        },
    );
  }
}