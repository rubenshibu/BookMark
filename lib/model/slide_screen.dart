import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;



  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'images/hearing.svg',
    title: 'Convineint use',
    description: 'Everything for comfortable\n reading of your favorite \nbook',
  ),
  Slide(
    imageUrl: 'images/reading.svg',
    title: 'Online listening',
    description: 'Different formats for listening \nto books with labels and\n subtitles',
  ),
  Slide(
    imageUrl: 'images/searching.svg',
    title: 'It\'s Just the Beginning',
    description: 'Easy search by all\n categories and authors from\n all over the world',
  ),
];