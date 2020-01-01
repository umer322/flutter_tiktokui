import 'package:flutter/material.dart';
import 'package:tiktok_ui/widgets/footer.dart';
import 'package:tiktok_ui/widgets/header.dart';
import 'package:tiktok_ui/widgets/toolbar.dart';
import 'package:tiktok_ui/widgets/video_description.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Column(
        children: <Widget>[
         HeaderSpace(),
          Expanded(child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              VideoDescription(),
              ToolBar()
            ],
          )),
          FooterView(),
        ],
      ),
    );
  }
}
