import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'functions.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'dart:ui';

import 'levelOne.dart';
import 'levelTwo.dart';
import 'levelThree.dart';
import 'levelFour.dart';
import 'levelFive.dart';
import 'levelSix.dart';
import 'levelSeven.dart';
import 'levelEight.dart';
import 'levelNine.dart';
import 'levelTen.dart';
import 'levelEleven.dart';
import 'levelTwelve.dart';
import 'levelThirteen.dart';
import 'levelFourteen.dart';
import 'levelFifteen.dart';
import 'levelSixteen.dart';
import 'levelSeventeen.dart';
import 'levelEighteen.dart';

////////////////////////////////////////////////
/////////////////Main///////////////////////////
////////////////////////////////////////////////

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstRoute(),
    );
  }
}

////////////////////////////////////////////////
/////////////Routes/////////////////////////////
////////////////////////////////////////////////

//Route 1 Home Screen
class FirstRoute extends StatefulWidget {
  //const FirstRoute({Key? key}) : super(key: key);
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute>
    with SingleTickerProviderStateMixin {
  ///////////////Adding Rotation to the app logo

  ////Remove late if null safe is not activated
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 10000),
      vsync: this,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

////////////////main build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2727), //medium darcula

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 150),
//Logo region//
            Container(
              //flex: 1,
              child: Center(
                //color: Colors.blueGrey[900],
                child: Image(
                  //image: AssetImage('assets/home_screen.png'),
                  image: AssetImage('assets/home_screenb.png'),
                ),
              ),
            ),

//Rotating Logo
            SizedBox(height: 60),
//Circular image with border

            Center(
              child: RotationTransition(
                turns: animation,
                child: CircleAvatar(
                    radius: 49,
                    backgroundColor: Colors.white,
                    child: Image(
                        image: AssetImage('assets/homescreen_rotation.png'))),
              ),
            ),

//Buttons region
            SizedBox(height: 100),
            Container(
              //color: Colors.blueGrey[900] //regio color //color: Color(0xFF474444), //medium darcula
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, //guide button allignment
                crossAxisAlignment:
                    CrossAxisAlignment.center, //guide button allignment
                children: [
                  Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, //guide button allignment
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
//Button to Guide
                      ElevatedButton(
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(width: 1.0, color: Colors.white),
                            //Color.fromARGB(255, 192, 192, 192)
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 38, 50,
                                  65)), //button background//color uppper darcula  43, 39, 39// blue grey: 38 50 56
                          textStyle: MaterialStateProperty.all(
                            TextStyle(fontSize: 30),
                            //font size
                          ),
                          padding: MaterialStateProperty.all(
                            //baground widget size
                            EdgeInsets.all(15),
                          ),
                        ),
                        child: Text(
                          'User Guide', //button wording
                          style: GoogleFonts.barlow(
                            //font style
                            textStyle: TextStyle(
                                color: Colors.white, letterSpacing: 5),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SecondRoute(),
                            ),
                          );
                        },
                      ),

                      SizedBox(height: 40),
//Buton To Levels
                      ElevatedButton(
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(width: 1.0, color: Colors.white),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 38, 50,
                                  65)), //button background//color uppper darcula  43, 39, 39// blue grey: 38 50 56
                          textStyle: MaterialStateProperty.all(
                            TextStyle(fontSize: 30),
                            //font size
                          ),
                          padding: MaterialStateProperty.all(
                            //baground widget size
                            EdgeInsets.all(5),
                          ),
                        ),
                        // child: Text('Play', //button wording
                        //     style: GoogleFonts.barlow(
                        //         //font style
                        //         textStyle: TextStyle(
                        //             color: Colors.white, letterSpacing: 5))),

                        child: const Icon(Icons.play_arrow_rounded, size: 56),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdRoute(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Route 2 Guide Screen
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey[900], //blueGrey
      backgroundColor: Color(0xFF2b2727), //medium darcula
      body: Stack(
        children: <Widget>[
          //Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_image.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
//Home Button
          Container(
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                homeButton(context, 'Home', FirstRoute()),
              ],
            ),
          ),

          // Instruction Text
          Align(
            alignment: Alignment(-0.2, 0.6),
            child: Container(
              constraints: BoxConstraints(minWidth: 100, maxWidth: 350),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                'Thank you for downloading\nInverse!!!\n\nThe Rules of the game\nare simple:\n\nGuess the movie title\noff a prompt, however, there is a catch.\n\nThe prompt will be the\ninverse of the movie title.\n\nAn example prompt and answer\nare shown below.\n\nStarve Sin Hate: Eat Pray Love\n\nClues will be available throughout, and all spelling comes from IMDB\n\nNote: The prompts are inverses not exact opposites\n\nSome levels require lateral thinking...\n\nBadmisfortune ;)',
                style: GoogleFonts.barlow(
                  //font style
                  textStyle: TextStyle(
                      color: Colors.white, letterSpacing: 2, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Route 3 Levels Screen
class ThirdRoute extends StatefulWidget {
  //const FirstRoute({Key? key}) : super(key: key);
  @override
  _ThirdRouteState createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  bool levelOnePassed = false;
  bool levelTwoPassed = false;
  bool levelThreePassed = false;
  bool levelFourPassed = false;
  bool levelFivePassed = false;
  bool levelSixPassed = false;
  bool levelSevenPassed = false;
  bool levelEightPassed = false;
  bool levelNinePassed = false;
  bool levelTenPassed = false;
  bool levelElevenPassed = false;
  bool levelTwelvePassed = false;
  bool levelThirteenPassed = false;
  bool levelFourteenPassed = false;
  bool levelFifteenPassed = false;
  bool levelSixteenPassed = false;
  bool levelSeventeenPassed = false;
  bool levelEighteenPassed = false;

  bool levelOneMainFailed = true;
  bool levelTwoMainFailed = true;
  bool levelThreeMainFailed = true;
  bool levelFourMainFailed = true;
  bool levelFiveMainFailed = true;
  bool levelSixMainFailed = true;
  bool levelSevenMainFailed = true;
  bool levelEightMainFailed = true;
  bool levelNineMainFailed = true;
  bool levelTenMainFailed = true;
  bool levelElevenMainFailed = true;
  bool levelTwelveMainFailed = true;

  bool levelThirteenMainFailed = true;
  bool levelFourteenMainFailed = true;
  bool levelFifteenMainFailed = true;
  bool levelSixteenMainFailed = true;
  bool levelSeventeenMainFailed = true;
  bool levelEighteenMainFailed = true;

  @override
  void initState() {
    //function to retrieve local flags to track user progress
    getData();

    super.initState();
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      levelOnePassed = prefs.getBool('levelOnePassed') ?? false;
      levelTwoPassed = prefs.getBool('levelTwoPassed') ?? false;
      levelThreePassed = prefs.getBool('levelThreePassed') ?? false;
      levelFourPassed = prefs.getBool('levelFourPassed') ?? false;
      levelFivePassed = prefs.getBool('levelFivePassed') ?? false;
      levelSixPassed = prefs.getBool('levelSixPassed') ?? false;
      levelSevenPassed = prefs.getBool('levelSevenPassed') ?? false;
      levelEightPassed = prefs.getBool('levelEightPassed') ?? false;
      levelNinePassed = prefs.getBool('levelNinePassed') ?? false;
      levelTenPassed = prefs.getBool('levelTenPassed') ?? false;
      levelElevenPassed = prefs.getBool('levelElevenPassed') ?? false;
      levelTwelvePassed = prefs.getBool('levelTwelvePassed') ?? false;

      levelThirteenPassed = prefs.getBool('levelThirteenPassed') ?? false;
      levelFourteenPassed = prefs.getBool('levelFourteenPassed') ?? false;
      levelFifteenPassed = prefs.getBool('levelFifteenPassed') ?? false;
      levelSixteenPassed = prefs.getBool('levelSixteenPassed') ?? false;
      levelSeventeenPassed = prefs.getBool('levelSeventeenPassed') ?? false;
      levelEighteenPassed = prefs.getBool('levelEighteenPassed') ?? false;

      levelOneMainFailed = prefs.getBool('levelOneFailed') ?? true;
      levelTwoMainFailed = prefs.getBool('levelTwoFailed') ?? true;
      levelThreeMainFailed = prefs.getBool('levelThreeFailed') ?? true;
      levelFourMainFailed = prefs.getBool('levelFourFailed') ?? true;
      levelFiveMainFailed = prefs.getBool('levelFiveFailed') ?? true;
      levelSixMainFailed = prefs.getBool('levelSixFailed') ?? true;
      levelSevenMainFailed = prefs.getBool('levelSevenFailed') ?? true;
      levelEightMainFailed = prefs.getBool('levelEightFailed') ?? true;
      levelNineMainFailed = prefs.getBool('levelNineFailed') ?? true;
      levelTenMainFailed = prefs.getBool('levelTenFailed') ?? true;
      levelElevenMainFailed = prefs.getBool('levelElevenFailed') ?? true;
      levelTwelveMainFailed = prefs.getBool('levelTwelveFailed') ?? true;

      levelThirteenMainFailed = prefs.getBool('levelThirteenFailed') ?? true;
      levelFourteenMainFailed = prefs.getBool('levelFourteenFailed') ?? true;
      levelFifteenMainFailed = prefs.getBool('levelFifteenFailed') ?? true;
      levelSixteenMainFailed = prefs.getBool('levelSixteenFailed') ?? true;
      levelSeventeenMainFailed = prefs.getBool('levelSeventeenFailed') ?? true;
      levelEighteenMainFailed = prefs.getBool('levelEighteenFailed') ?? true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
//Entire Page Container with background image
        Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Home Button
            Container(
              padding: EdgeInsets.only(left: 38, top: 20),
              child: homeButton(context, 'Home', FirstRoute()),
            ),
            SizedBox(height: 30),
            //Level Buttons
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //1-3
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      stagePrompt('Stage 1'),
                    ],
                  ),
                  SizedBox(height: 8),
                  //1-3
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      levelButton(context, '1', LevelOne(), levelOneMainFailed),
                      levelButton(context, '2', LevelTwo(), levelTwoMainFailed),
                      levelButton(
                          context, '3', LevelThree(), levelThreeMainFailed),
                    ],
                  ),
                  SizedBox(height: 8),
                  //4-6
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      levelButton(
                          context, '4', LevelFour(), levelFourMainFailed),
                      levelButton(
                          context, '5', LevelFive(), levelFiveMainFailed),
                      levelButton(context, '6', LevelSix(), levelSixMainFailed),
                    ],
                  ),
                  SizedBox(height: 50),
                  //Stage Prompt
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      stagePrompt('Stage 2'),
                    ],
                  ),
                  SizedBox(height: 8),

                  //13-16
                  levelOnePassed &&
                          levelTwoPassed &&
                          levelThreePassed &&
                          levelFourPassed &&
                          levelFivePassed &&
                          levelSixPassed
                      ? Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            levelButton(context, '7', LevelSeven(),
                                levelSevenMainFailed),
                            levelButton(context, '8', LevelEight(),
                                levelEightMainFailed),
                            levelButton(
                                context, '9', LevelNine(), levelNineMainFailed),
                          ],
                        )
                      : Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            lockedButton(context, ThirdRoute()),
                            lockedButton(context, ThirdRoute()),
                            lockedButton(context, ThirdRoute()),
                          ],
                        ),

                  SizedBox(height: 8),
                  //21-24

                  levelOnePassed &&
                          levelTwoPassed &&
                          levelThreePassed &&
                          levelFourPassed &&
                          levelFivePassed &&
                          levelSixPassed
                      ? Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            levelButton(
                                context, '10', LevelTen(), levelTenMainFailed),
                            levelButton(context, '11', LevelEleven(),
                                levelElevenMainFailed),
                            levelButton(context, '12', LevelTwelve(),
                                levelTwelveMainFailed),
                          ],
                        )
                      : Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            lockedButton(context, ThirdRoute()),
                            lockedButton(context, ThirdRoute()),
                            lockedButton(context, ThirdRoute()),
                          ],
                        ),

                  SizedBox(height: 50),
                  //25-28
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      stagePrompt('Stage 3'),
                    ],
                  ),
                  SizedBox(height: 8),

                  //13-16

                  levelSevenPassed &&
                          levelEightPassed &&
                          levelNinePassed &&
                          levelTenPassed &&
                          levelElevenPassed &&
                          levelTwelvePassed
                      ? Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            levelButton(context, '13', LevelThirteen(),
                                levelThirteenMainFailed),
                            levelButton(context, '14', LevelFourteen(),
                                levelFourteenMainFailed),
                            levelButton(context, '15', LevelFifteen(),
                                levelFifteenMainFailed),
                          ],
                        )
                      : Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            lockedButton(context, ThirdRoute()),
                            lockedButton(context, ThirdRoute()),
                            lockedButton(context, ThirdRoute()),
                          ],
                        ),

                  SizedBox(height: 8),
                  //21-24

                  levelSevenPassed &&
                          levelEightPassed &&
                          levelNinePassed &&
                          levelTenPassed &&
                          levelElevenPassed &&
                          levelTwelvePassed
                      ? Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            levelButton(context, '16', LevelSixteen(),
                                levelSixteenMainFailed),
                            levelButton(context, '17', LevelSeventeen(),
                                levelSeventeenMainFailed),
                            levelButton(context, '18', LevelEighteen(),
                                levelEighteenMainFailed),
                          ],
                        )
                      : Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            lockedButton(context, ThirdRoute()),
                            lockedButton(context, ThirdRoute()),
                            lockedButton(context, ThirdRoute()),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
