import 'package:flutter/material.dart';

class ToolBar extends StatefulWidget {
  @override
  _ToolBarState createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> with SingleTickerProviderStateMixin{
  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(seconds: 6))..repeat();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
              Positioned(
                  bottom: -10,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.only(),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.pink, shape: BoxShape.circle),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      )),
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.favorite,size: 40,),
                    Text("236.7k")
                  ],
                ),
                minWidth: 20,
                height: 20,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),

            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.chat,size: 40,),
                    Text("926")
                  ],
                ),
                minWidth: 20,
                height: 20,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),

            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.redo,size: 40,),
                    Text("14.5k")
                  ],
                ),
                minWidth: 20,
                height: 20,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),

            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: RotationTransition(
          alignment: Alignment.center,
            turns: Tween<double>(begin: 0,end: 1).animate(_controller),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 10),
                shape: BoxShape.circle
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
