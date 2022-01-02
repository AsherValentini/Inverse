import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'dart:ui';

//import 'globals.dart';

///////////////////////////////////////////////////
///////////////Functions//////////////////////////
/////////////////////////////////////////////////

//Open level button
Widget levelButton(
    BuildContext context, String text, Widget routeName, bool levelOneFailed) {
  return ElevatedButton(
    style: ButtonStyle(
      side: MaterialStateProperty.all(
        BorderSide(width: 1.0, color: Color.fromARGB(255, 192, 192, 192)),
      ),
      backgroundColor: levelOneFailed
          ? MaterialStateProperty.all<Color>(Colors.blueGrey.shade900)
          : MaterialStateProperty.all<Color>(Color(0xFF30dbf4)),
      //backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
      // 255,
      // 67,
      // 65,
      //65)), //button background//color uppper darcula  43, 39, 39// blue grey: 38 50 56
      textStyle: MaterialStateProperty.all(
        TextStyle(fontSize: 20),
        //font size
      ),
      padding: MaterialStateProperty.all(
        //baground widget size
        EdgeInsets.all(5),
      ),
    ),
    child: Text(
      text, //button wording
      style: GoogleFonts.barlow(
        //font style
        textStyle: TextStyle(color: Colors.white, letterSpacing: 1),
      ),
    ),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => routeName,
          ));
    },
  );
}

//Locked Level Button
Widget lockedButton(BuildContext context, Widget routeName) {
  return ElevatedButton(
    style: ButtonStyle(
      side: MaterialStateProperty.all(
        BorderSide(width: 1.0, color: Color.fromARGB(255, 192, 192, 192)),
      ),
      backgroundColor:
          MaterialStateProperty.all<Color>(Colors.blueGrey.shade900),
      textStyle: MaterialStateProperty.all(
        TextStyle(fontSize: 20),
        //font size
      ),
      padding: MaterialStateProperty.all(
        //baground widget size
        EdgeInsets.all(5),
      ),
    ),
    child: const Icon(Icons.lock),
    onPressed: () {
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => routeName,
      //     ));
    },
  );
}

// //Home button
Widget homeButton(BuildContext context, String text, Widget routeName) {
  return ElevatedButton(
    style: ButtonStyle(
      side: MaterialStateProperty.all(
        BorderSide(width: 1.0, color: Color.fromARGB(255, 192, 192, 192)),
      ),
      backgroundColor:
          MaterialStateProperty.all<Color>(Colors.blueGrey.shade900),

      //backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
      // 255,
      // 67,
      // 65,
      //65)), //button background//color uppper darcula  43, 39, 39// blue grey: 38 50 56
      textStyle: MaterialStateProperty.all(
        TextStyle(fontSize: 20),
        //font size
      ),
      padding: MaterialStateProperty.all(
        //baground widget size
        EdgeInsets.all(5),
      ),
    ),
    // child: Text(
    //   text, //button wording
    //   style: GoogleFonts.barlow(
    //     //font style
    //     textStyle: TextStyle(color: Colors.white, letterSpacing: 1),
    //   ),
    // ),

    child: const Icon(Icons.home),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => routeName,
          ));
    },
  );
}

Widget backButton(BuildContext context, String text, Widget routeName) {
  return ElevatedButton(
    style: ButtonStyle(
      side: MaterialStateProperty.all(
        BorderSide(width: 1.0, color: Color.fromARGB(255, 192, 192, 192)),
      ),
      backgroundColor:
          MaterialStateProperty.all<Color>(Colors.blueGrey.shade900),

      //backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
      // 255,
      // 67,
      // 65,
      //65)), //button background//color uppper darcula  43, 39, 39// blue grey: 38 50 56
      textStyle: MaterialStateProperty.all(
        TextStyle(fontSize: 20),
        //font size
      ),
      padding: MaterialStateProperty.all(
        //baground widget size
        EdgeInsets.all(5),
      ),
    ),
    // child: Text(
    //   text, //button wording
    //   style: GoogleFonts.barlow(
    //     //font style
    //     textStyle: TextStyle(color: Colors.white, letterSpacing: 1),
    //   ),
    // ),

    child: const Icon(Icons.keyboard_return_outlined),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => routeName,
          ));
    },
  );
}

hint(String hint, BuildContext context) {
  showDialog(
      barrierColor: Colors.black54,
      context: context,
      builder: (context) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: AlertDialog(
              content: Material(
                color: Colors.blueGrey.shade900,
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                child: Text(
                  hint,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.barlow(
                    //font style
                    textStyle: TextStyle(
                        color: Colors.white, letterSpacing: 1, fontSize: 20),
                  ),
                ),
              ),
              backgroundColor: Colors.blueGrey.shade900,
            ),
          ),
        );
      });
}

//Movie Prompt Function
Widget moviePrompt(String prompt) {
  return Container(
    padding: EdgeInsets.all(17),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.blueGrey.shade900,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Center(
      child: Text(prompt,
          textAlign: TextAlign.center,
          style: GoogleFonts.barlow(
              //font style
              textStyle: TextStyle(
                  color: Colors.white, letterSpacing: 5, fontSize: 20))),
    ),
  );
}

Widget stagePrompt(String prompt) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.blueGrey.shade900,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Center(
      child: Text(prompt,
          textAlign: TextAlign.center,
          style: GoogleFonts.barlow(
              //font style
              textStyle: TextStyle(
                  color: Colors.white, letterSpacing: 5, fontSize: 20))),
    ),
  );
}

//Level Failed Level Screen
Widget levelFailed(Color inputColor, myController) {
  return Container(
    padding: EdgeInsets.all(17),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: inputColor,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Center(
      child: TextFormField(
        textAlign: TextAlign.center,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        controller: myController,
        style: GoogleFonts.barlow(
            //font style
            textStyle:
                TextStyle(color: Colors.white, letterSpacing: 5, fontSize: 20)),
      ),
    ),
    key: UniqueKey(),
  );
}

//Level Completed Level Screen
Widget levelComplete(String answer) {
  return Container(
    padding: EdgeInsets.all(17),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        //color: Colors.lightBlue.shade500,
        color: Color(0xFF30dbf4),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Center(
      child: Text(
        answer,
        textAlign: TextAlign.center,
        style: GoogleFonts.barlow(
          //font style
          textStyle:
              TextStyle(color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
      ),
    ),
    key: UniqueKey(),
  );
}
