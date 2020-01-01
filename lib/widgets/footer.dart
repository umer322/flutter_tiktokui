import 'package:flutter/material.dart';

class FooterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: Colors.black,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.home,color: Colors.white,),
                Text("Home")
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.search,color: Colors.white,),
                Text("Discover")
              ],
            ),
            Container(
              width: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                   end: Alignment.centerRight,
                    begin: Alignment.centerLeft,
                    stops: [0,0.9,1],
                    tileMode: TileMode.clamp,
                    colors: [
                  Colors.blue[400],
                  Colors.white,
                  Colors.pinkAccent
                ]),
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              
              child: Icon(Icons.add,color: Colors.black,),
            ),
            Column(
              children: <Widget>[
                Icon(Icons.inbox,color: Colors.white,),
                Text("Inbox")
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.person_outline,color: Colors.white,),
                Text("Me")
              ],
            ),
          ]
      ),
    );
  }
}
