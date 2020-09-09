import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/slide_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GettingStartedScreen extends StatelessWidget {
  final int index;
  GettingStartedScreen(this.index);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[300],
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(slideList[index].imageUrl,
                  // './images/hearing.svg',
                  width: 250,),
                SizedBox(height: 60.0,),
                Text(
                  slideList[index].title,
                  // 'Conveneint use',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 50.0,),
                Text(
                  slideList[index].description,
                  // 'Everything for comfortable \n reading of your favorite \n book',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black38,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(
                            child: Material(
                              color: Colors.black, // button color
                              child: InkWell(
                                splashColor: Colors.white24, // splash color
                                onTap: () {}, // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.play_arrow,color: Colors.white,), // icon
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ),
        ),
      ),
    );
  }
}
