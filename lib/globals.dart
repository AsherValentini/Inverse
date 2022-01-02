import 'package:flutter/material.dart';

//App running
bool running = true;

//level passed flags
//bool levelOneFailed = true;
bool levelTwoFailed = true;
bool levelThreeFailed = true;
bool levelFourFailed = true;
bool levelFiveFailed = true;
bool levelSixFailed = true;
bool levelSevenFailed = true;
bool levelEightFailed = true;
bool levelNineFailed = true;
bool level10Failed = true;
bool level11Failed = true;
bool level12Failed = true;
bool level13Failed = true;
bool level14Failed = true;
bool level15Failed = true;
bool level16Failed = true;
bool level17Failed = true;
bool level18Failed = true;
bool level19Failed = true;
bool level20Failed = true;
bool level21Failed = true;
bool level2Failed = true;
bool level23Failed = true;
bool level24Failed = true;
bool level25Failed = true;
bool level26Failed = true;
bool level27Failed = true;
bool level28Failed = true;
bool level29Failed = true;
bool level30Failed = true;
bool level31Failed = true;
bool level32Failed = true;
bool level33Failed = true;
bool level34Failed = true;
bool level35Failed = true;
bool level36Failed = true;

bool levelTwoPassed = false;
bool levelThreePassed = false;
bool levelFourPassed = false;
bool levelFivePassed = false;
bool levelSixPassed = false;
bool levelSevenPassed = false;
bool levelEightPassed = false;
bool levelNinePassed = false;
bool level10Passed = false;
bool level11Passed = false;
bool level12Passed = false;
bool level13Passed = false;
bool level14Passed = false;
bool level15Passed = false;
bool level16Passed = false;
bool level17Passed = false;
bool level18Passed = false;
bool level19Passed = false;
bool level20Passed = false;
bool level21Passed = false;
bool level2Passed = false;
bool level23Passed = false;
bool level24Passed = false;
bool level25Passed = false;
bool level26Passed = false;
bool level27Passed = false;
bool level28Passed = false;
bool level29Passed = false;
bool level30Passed = false;
bool level31Passed = false;
bool level32Passed = false;
bool level33Passed = false;
bool level34Passed = false;
bool level35Passed = false;
bool level36Passed = false;

//check textfield flags
//bool validateUnpressed = true;
bool validate2Unpressed = true;
bool validate3Unpressed = true;
bool validate4Unpressed = true;
bool validate5Unpressed = true;
bool validate6Unpressed = true;
bool validate7Unpressed = true;
bool validate8Unpressed = true;
bool validate9Unpressed = true;
bool validate10Unpressed = true;
bool validate11Unpressed = true;
bool validate12Unpressed = true;
bool validate13Unpressed = true;

Color inputColor = Colors.blueGrey.shade900;

///////////////Level 1///////////////

////////Prompts
String level1P = "Average Man";

///////Hints
String level1H = "This film is an action super hero film";

/////Check
String level1C = 'wonderwoman';

/////Answers
String level1A = 'Wonder Woman';

///////////////Level 2///////////////

////////Prompts
String level2P = "The City Movie";

///////Hints
String level2H = "This film is a kids cartoon first released in 1967";

/////Check
String level2C = 'thejunglebook';

/////Answers
String level2A = 'The Jungle Book';

///////////////Level 3///////////////

////////Prompts
String level3P = "The Servent of The Squares";

///////Hints
String level3H = "This film was part of a trilogy";

/////Check
String level3C = 'thelordoftherings';

/////Answers
String level3A = 'The Lord of The Rings';

///////////////Level 4///////////////

////////Prompts
String level4P = "Celebicy and the Suburbs 1/2";

///////Hints
String level4H = "This film starred Sarah Jessica Parker";

/////Check
String level4C = 'sexandthecity2';

/////Answers
String level4A = 'Sex and the City 2';

///////////////Level 5///////////////

////////Prompts
String level5P = "Liquid";

///////Hints
String level5H = "This film is a childs cartoon";

/////Check
String level5C = 'frozen';

/////Answers
String level5A = 'Frozen';

///////////////Level 6///////////////

////////Prompts
String level6P = "The Sight Center";

///////Hints
String level6H = "This film has to do with sports";

/////Check
String level6C = 'theblindside';

/////Answers
String level6A = 'The Blind Side';

///////////////Level 7///////////////

////////Prompts
String level7P = "The Satisfied Work";

///////Hints
String level7H = "This film is part of a trilogy";

/////Check
String level7C = 'thehungergames';

/////Answers
String level7A = 'The Hunger Games';

///////////////Level 8///////////////

////////Prompts
String level8P = "The Initiator";

///////Hints
String level8H = "This film is part of a movie franchise that started in 1984";

/////Check
String level8C = 'theterminator';

/////Answers
String level8A = 'The Terminator';

///////////////Level 9///////////////

////////Prompts
String level9P = "Depressed Hands";

///////Hints
String level9H = "This film is about pengiuns";

/////Check
String level9C = 'happyfeet';

/////Answers
String level9A = 'happyfeet';

///////////////Level 10///////////////

////////Prompts
String level10P = "Submarine Woman";

///////Hints
String level10H = "This film follows the life of a famous musician";

/////Check
String level10C = 'rocketman';

/////Answers
String level10A = 'Rocket Man';

///////////////Level 11///////////////

////////Prompts
String level11P = "Hunted";

///////Hints
String level11H = "This film follows humans fighting for survival";

/////Check
String level11C = 'predator';

/////Answers
String level11A = 'Predator';

///////////////Level 12///////////////

////////Prompts
String level12P = "The Aggressors";

///////Hints
String level12H = "This film is part of an action trilogy";

/////Check
String level12C = 'theavengers';

/////Answers
String level12A = 'The Avengers';

///////////////Level 13///////////////

////////Prompts
String level13P = "The Red Film";

///////Hints
String level13H =
    "This movie follows the trips and journeys of a musician and an old fashion yet lovable Italian";

/////Check
String level13C = 'thegreenbook';

/////Answers
String level13A = 'The Green Book';

///////////////Level 13///////////////

////////Prompts
String level14P = "The Original Work";

///////Hints
String level14H = "This movie is set during World War 2";

/////Check
String level14C = 'theimitationgame';

/////Answers
String level14A = 'The Imitation Game';

///////////////Level 13///////////////

////////Prompts
String level15P = "The Bright Day Sets";

///////Hints
String level15H = "This movie is also a comic book series";

/////Check
String level15C = 'thedarkknightrises';

/////Answers
String level15A = 'The Dark Knight Rises';

///////////////Level 13///////////////

////////Prompts
String level16P = "The Woman Who Forgot the Limit";

///////Hints
String level16H =
    "This movie centers around the life of a famous mathematician";

/////Check
String level16C = 'themanwhoknewinfinity';

/////Answers
String level16A = 'The Man Who Knew Infinity';

///////////////Level 13///////////////

////////Prompts
String level17P = "Miniscule";

///////Hints
String level17H = "Very cold characters";

/////Check
String level17C = 'titanic';

/////Answers
String level17A = 'Titanic';

///////////////Level 13///////////////

////////Prompts
String level18P = "Rational";

///////Hints
String level18H =
    "Released in 1960, this film is regarded as one of the most famous thrillers of all time";

/////Check
String level18C = 'psycho';

/////Answers
String level18A = 'Psycho';
