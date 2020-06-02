import 'package:flutter/material.dart';

class CompanyInfoPage extends StatefulWidget {
  @override
  _CompanyInfoPageState createState() => _CompanyInfoPageState();
}

class _CompanyInfoPageState extends State<CompanyInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.black54,), onPressed: (){
          Navigator.pop(context);
        }),
        backgroundColor:Colors.white,
      ),
      body: Container(
        child: Text("公司信息页面"),
      ),
    );
  }
}