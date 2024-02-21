import 'package:flutter/material.dart';

class Questions with ChangeNotifier {
  final List _foodQuestions = [
    "How much Meat, Fish and Eggs do you consume?",
    'How much Grains and Baked Goods do you consume?',
    'How much Dairy Products do you consume?',
    'How much Fruits and Vegetables do you consume?',
    'how',
  ];

  final List _waterQuestions = [
    'For how much hours Fan was used?',
    'For how much hours T.V. was used?',
    'For how much hours Fridge was used?',
    'How many liters of Water is consumed?',
    'how',
  ];

  final List _travelQuestions = [
    'What is the distance travelled by bike?',
    'What is the distance travelled by Car?',
    'What is the distance travelled by Bicycle?',
    'how',
  ];

  List get foodQuestions {
    return _foodQuestions;
  }

  List get travelQuestions {
    return _travelQuestions;
  }

  List get waterQuestions {
    return _waterQuestions;
  }
}
