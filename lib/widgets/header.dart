import 'package:flutter/material.dart';

class HeaderSpace extends StatefulWidget {
  @override
  _HeaderSpaceState createState() => _HeaderSpaceState();
}

class _HeaderSpaceState extends State<HeaderSpace> {
  int tapped = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: ()=>setState((){tapped=0;}),
              child: AnimatedDefaultTextStyle(
                curve: Curves.bounceInOut,
                  child: Text("Following"),
                  style: tapped == 0
                      ? TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)
                      : TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white30),
                  duration: Duration(milliseconds: 200))),
          SizedBox(width: 20,),
          GestureDetector(
            onTap: ()=>setState((){tapped=1;}),
            child: AnimatedDefaultTextStyle(
                curve: Curves.bounceInOut,
                child: Text("For You"),
                style: tapped == 1
                    ? TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white)
                    : TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white30),
                duration: Duration(milliseconds: 200)),
          )
        ],
      ),
    );
  }
}
