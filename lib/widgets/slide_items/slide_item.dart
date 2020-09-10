import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:slider_app/constants/constants.dart';
import 'package:slider_app/model/slider.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.amber[300],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(sliderArrayList[index].sliderImageUrl,
                // './images/hearing.svg',
                width: 250,),
              SizedBox(height: 60.0,),
              Text(
                sliderArrayList[index].sliderHeading,
                // 'Conveneint use',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(height: 50.0,),
              Text(
                sliderArrayList[index].sliderSubHeading,
                // 'Everything for comfortable \n reading of your favorite \n book',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}