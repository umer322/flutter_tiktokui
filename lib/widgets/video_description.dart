import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("@ada.ali_official",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0),
            child: Container(
                width: MediaQuery.of(context).size.width*0.6,
                child:AutoSizeText.rich(
                    TextSpan(
                      text: "New year night in",
                      children: [
                        TextSpan(
                          text: ' #bahriatown #lahore #eiffel #happynewyear #2020',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)
                        )
                      ]
                    ),
                  minFontSize: 12,
                  maxFontSize: 16,
                )),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note
              ),
              SizedBox(width: 10,),
              Container(
                width: MediaQuery.of(context).size.width*0.4,
                child: TyperAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    speed: Duration(milliseconds: 200),
                    text: [
                      "original sound  ",

                    ],
                    textStyle: TextStyle(
                        fontSize: 16.0,
                        fontFamily: "Bobbers"
                    ),
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
              ),
            ],
          )
        ],),
    ));
  }
}
//AutoSizeText(
//"New year night in #bahriatown #lahore #eiffel #happynewyear #2020",minFontSize: 12,maxFontSize: 16,style:TextStyle(fontSize: 16))