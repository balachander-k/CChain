import 'package:flutter/material.dart';

class Questions with ChangeNotifier {
  final List<String> _recQuestions = [
  "What is the total volume of materials recycled per month?",
  "What is the total energy consumption during the recycling process?",
  "What is the proportion of recycled materials diverted from landfill?",
  "What is the emission factor associated with the recycling process?",
];

final List<String> _manuQuestions = [
  "What is the total energy consumption of the manufacturing unit?",
  "What is the carbon intensity of the energy sources used?",
  "What is the production output of the manufacturing unit?",
  "What is the emission factor associated with the production process?",
];

final List<String> _travelQuestions = [
  "What is the distance traveled?",
  "What is the fuel efficiency of the vehicle?",
  "What is the emission factor?",
  "What is the amount of fuel consumed?",
];


  List get recQuestions {
    return _recQuestions;
  }

  List get travelQuestions {
    return _travelQuestions;
  }

  List get manuQuestions {
    return _manuQuestions;
  }
}
