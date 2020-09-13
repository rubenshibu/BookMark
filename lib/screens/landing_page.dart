import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:BookMark/ui_view/slider_layout_view.dart';
class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text('Skip'),
            hoverColor: Colors.white24,
            shape: StadiumBorder(),
            color: Colors.amber[300],
            textColor: Colors.white,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: onBordingBody(),
    );
  }
  Widget onBordingBody() => Container(
        child: SliderLayoutView(),
      );
}
