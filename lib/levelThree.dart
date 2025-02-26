import 'package:flutter/material.dart';

import 'package:inverse/levelFour.dart';

import 'functions.dart';

import 'main.dart';

import 'globals.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:lottie/lottie.dart';

//Route4 Level 1: The City Movie
class LevelThree extends StatefulWidget {
  const LevelThree({Key? key}) : super(key: key);

  @override
  _LevelThree createState() => _LevelThree();
}

class _LevelThree extends State<LevelThree>
    with SingleTickerProviderStateMixin {
///////////////////////////////////////////////////////////////
////////////////////Route build begins/////////////////////////
///////////////////////////////////////////////////////////////
  TextEditingController myController = TextEditingController();

  late AnimationController controller;

  Color inputColor = Colors.blueGrey.shade900;
  bool levelThreeFailed = true;
  bool validate3Unpressed = true;

  @override
  void initState() {
    //function to retrieve local flags to track user progress
    getData();

    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        Navigator.pop(context);
        controller.reset();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      levelThreeFailed = prefs.getBool('levelThreeFailed')!;
      validate3Unpressed = prefs.getBool('validate3Unpressed')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
//Entire Route's Container with background Image inserted
          Container(
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
//Home button Container
            Container(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeButton(context, 'Home', FirstRoute()),
                  backButton(context, 'Levels', ThirdRoute()),
                ],
              ),
            ),
//Spacing
            SizedBox(height: 162),
//Movie Prompt text
            moviePrompt(level3P),
//Spacing
            SizedBox(height: 100),

//Texfield
            levelThreeFailed
                //Level Failed Container
                ? levelFailed(inputColor, myController)
                // Level Complete Container
                : levelComplete(level3A),

//Spacing
            SizedBox(height: 110),
//Check Button for Textfield Input
            levelThreeFailed
                ? validate3Unpressed
                    ? Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //check answer button
                            FloatingActionButton(
                                onPressed: () async {
                                  _validateUserInput(
                                      myController.text, level3C);

                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setBool('validate3Unpressed', false);
                                },
                                tooltip: 'Check your answer',
                                child: const Icon(Icons.check),
                                backgroundColor: Colors.blueGrey.shade900,
                                shape: CircleBorder(
                                    side: BorderSide(color: Colors.white))),
                            //check hint  button

                            FloatingActionButton(
                              onPressed: () async {
                                hint(level3H, context);
                              },
                              tooltip: 'Get a hint',
                              child: const Icon(Icons.search),
                              backgroundColor: Colors.blueGrey.shade900,
                              shape: CircleBorder(
                                side: BorderSide(color: Colors.white),
                              ),
                            ),

                            //get answer button
                            FloatingActionButton(
                                onPressed: () {
                                  hint(level3A, context);
                                },
                                tooltip: 'Get Answer',
                                child: const Icon(Icons.error_outline_rounded),
                                backgroundColor: Colors.blueGrey.shade900,
                                shape: CircleBorder(
                                    side: BorderSide(color: Colors.white))),
                          ],
                        ),
                      )
                    : Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //check answer button
                            FloatingActionButton(
                                onPressed: () async {
                                  _validateUserInput(
                                      myController.text, level3C);

                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setBool('validate3Unpressed', true);
                                },
                                tooltip: 'Check your answer',
                                child: const Icon(Icons.check),
                                backgroundColor: Colors.blueGrey.shade900,
                                shape: CircleBorder(
                                    side: BorderSide(color: Colors.white))),
                            //get a hint button

                            FloatingActionButton(
                                onPressed: () async {
                                  hint(level3H, context);
                                },
                                tooltip: 'Get a hint',
                                child: const Icon(Icons.search),
                                backgroundColor: Colors.blueGrey.shade900,
                                shape: CircleBorder(
                                    side: BorderSide(color: Colors.white))),

                            //get answer button
                            FloatingActionButton(
                                onPressed: () {
                                  hint(level3A, context);
                                },
                                tooltip: 'Get answer',
                                child: const Icon(Icons.error_outline_rounded),
                                backgroundColor: Colors.blueGrey.shade900,
                                shape: CircleBorder(
                                    side: BorderSide(color: Colors.white))),
                          ],
                        ),
                      )
                : Center(
                    //clear answer and restart level
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton(
                          onPressed: () async {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setBool('validate3Unpressed', true);
                            prefs.setBool('levelThreeFailed', true);

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LevelThree(),
                                ));
                          },
                          tooltip: 'Clear your answer',
                          child: const Icon(Icons.clear),
                          backgroundColor: Colors.blueGrey.shade900,
                          shape: CircleBorder(
                            side: BorderSide(color: Colors.white),
                          ),
                        ),
                        //next level button
                        FloatingActionButton(
                          onPressed: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LevelFour(),
                                ));
                          },
                          tooltip: 'Clear your answer',
                          child: const Icon(Icons.navigate_next),
                          backgroundColor: Colors.blueGrey.shade900,
                          shape: CircleBorder(
                            side: BorderSide(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }

//Validating the users input: Changes text field's background color and contains the alert dialogue

//if users input is correct
//-set level one passed as true (shared preference storage)
//-set level one failed as false (shared preference storage)
//-display correct dialogue box
//-set textfield background button green

//else
//-set level one failed true (shared preference storage)
//-show failed diolgue
//-set input color to textfiel as red

  _validateUserInput(String input, String answer) async {
    if (input.toLowerCase().trim().replaceAll(' ', '') == answer) {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      setState(() {
        prefs.setBool("levelThreePassed", true);
        prefs.setBool('levelThreeFailed', false);
        levelThreeFailed = prefs.getBool('levelThreeFailed') ?? true;

        inputColor = Color(0xFF30dbf4);

        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => Dialog(
            backgroundColor: Color.fromARGB(0, 38, 50, 65),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset('assets/blue_success.json',
                    repeat: false,
                    controller: controller, onLoaded: (composition) {
                  controller.forward();
                })
              ],
            ),
          ),
        );
      });
    } else if (input.toLowerCase().trimRight().replaceAll(' ', '') != answer &&
        input != ' ') {
      inputColor = Colors.red.shade700; //texfield background color

      SharedPreferences prefs = await SharedPreferences.getInstance();

      setState(() {
        prefs.setBool('levelThreeFailed', true);
        levelThreeFailed = prefs.getBool('levelThreeFailed')!;
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => Dialog(
            backgroundColor: Color.fromARGB(0, 38, 50, 65),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset('assets/error.json',
                    repeat: false,
                    controller: controller, onLoaded: (composition) {
                  controller.forward();
                })
              ],
            ),
          ),
        );
      });
    } else if (input.toLowerCase() == ' ') {}
  }
} //ender bracket
