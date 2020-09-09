
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import './screens/getting_started_screen.dart';
import '../widgets/slide_item.dart';
import "../model/slide_screen.dart";
import '../widgets/slide_dots.dart';


void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
    runApp(MyApp());
  }
 // );
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
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
    );
  }
}










//
//
// class GettingStartedScreen extends StatefulWidget {
//   @override
//   _GettingStartedScreenState createState() => _GettingStartedScreenState();
// }
//
// class _GettingStartedScreenState extends State<GettingStartedScreen> {
//   int _currentPage = 0;
//   final PageController _pageController = PageController(initialPage: 0);
//
//   @override
//   void initState() {
//     super.initState();
//     Timer.periodic(Duration(seconds: 5), (Timer timer) {
//       if (_currentPage < 2) {
//         _currentPage++;
//       } else {
//         _currentPage = 0;
//       }
//
//       _pageController.animateToPage(
//         _currentPage,
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeIn,
//       );
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _pageController.dispose();
//   }
//
//   _onPageChanged(int index) {
//     setState(() {
//       _currentPage = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.white,
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: <Widget>[
//               Expanded(
//                 child: Stack(
//                   alignment: AlignmentDirectional.bottomCenter,
//                   children: <Widget>[
//                     PageView.builder(
//                       scrollDirection: Axis.horizontal,
//                       controller: _pageController,
//                       onPageChanged: _onPageChanged,
//                       itemCount: slideList.length,
//                       itemBuilder: (ctx, i) => SlideItem(i),
//                     ),
//                     Stack(
//                       alignment: AlignmentDirectional.topStart,
//                       children: <Widget>[
//                         Container(
//                           margin: const EdgeInsets.only(bottom: 35),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               for(int i = 0; i<slideList.length; i++)
//                                 if( i == _currentPage )
//                                   SlideDots(true)
//                                 else
//                                   SlideDots(false)
//                             ],
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//






















