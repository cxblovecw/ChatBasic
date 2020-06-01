import 'package:ChatBasic/pages/desk/desk.dart';
import 'package:ChatBasic/pages/document/document.dart';
import 'package:ChatBasic/pages/message/message.dart';
import 'package:ChatBasic/pages/scrum/scrum.dart';
import 'package:ChatBasic/pages/target/target.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor:Colors.grey,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.track_changes),title: Text("目标")),
            BottomNavigationBarItem(icon: Icon(Icons.message),title: Text("消息")),
            BottomNavigationBarItem(icon: Icon(Icons.description),title: Text("文档")),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard),title: Text("工作台")),
            BottomNavigationBarItem(icon: Icon(Icons.golf_course),title: Text("Scrum")),
          ],
        ),
        body: IndexedStack(
          children: <Widget>[
            TargetPage(),
            MessagePage(),
            DocumentPage(),
            DeskPage(),
            ScrumPage()
          ],
          index: currentIndex,
        ),
      ),
    );
  }
}