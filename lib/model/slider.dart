import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_app/constants/constants.dart';
class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider(
      {@required this.sliderImageUrl,
      @required this.sliderHeading,
      @required this.sliderSubHeading});
 }

final sliderArrayList = [
    Slider(
        sliderImageUrl: 'assets/images/my1.svg',
        sliderHeading: Constants.SLIDER_HEADING_1,
        sliderSubHeading: Constants.SLIDER_DESC_1),
    Slider(
        sliderImageUrl: 'assets/images/slider_2.svg',
        sliderHeading: Constants.SLIDER_HEADING_2,
        sliderSubHeading: Constants.SLIDER_DESC_2),
    Slider(
        sliderImageUrl: 'assets/images/slider_3.svg',
        sliderHeading: Constants.SLIDER_HEADING_3,
        sliderSubHeading: Constants.SLIDER_DESC_3),
  ];
