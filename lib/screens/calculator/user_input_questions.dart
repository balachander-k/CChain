import 'package:flutter/material.dart';

class Questions with ChangeNotifier {
  final List<String> _recQuestions = [
  "What is the total volume of materials recycled?",
  "What is the total energy consumption?",
  "What is the water consumption for recycling activities?",

];

final List<String> _manuQuestions = [
  "What is the total energy consumption?",
  "What is the total water consumption?",
  "what is the amount of fossils used?",
];

final List<String> _travelQuestions = [
  "What is the amount distance travelled?",
  "What is the Efficiency of vehicle?",
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
