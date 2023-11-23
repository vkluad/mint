import 'package:flutter/material.dart';

Map<String, bool> conditions = {
  'Stress': false,
  'Panic attack': false,
  'Low selt-esteem': false,
  'Anxiety': false,
  'Powerless': false,
  'Mood swing': false,
};

Map<String, bool> relations = {
  'With partner': false,
  'With children': false,
  'Sexual': false,
  'With parents': false,
  'With others': false,
  'Orientation': false,
};

Map<String, bool> study = {
  'Burnout': false,
  'Procrastination': false,
  'No goal': false,
  'Lack of motivation': false,
  'Job lose': false,
};

Map<String, Map<RangeValues, bool>> experience = {
  'All': {const RangeValues(0, 100): false},
  'No experience': {const RangeValues(0, 1): false},
  'From 1 to 3 years': {const RangeValues(1, 3): false},
  'From 4 to 7 years': {const RangeValues(4, 7): false},
  'More than 7 years': {const RangeValues(7, 100): false},
};

Map<String, bool> specialities = {
  'Motivation': false,
  'Panic': false,
  'Burnout': false,
  'Depression': false,
  'Self-confidence': false,
  'Immigration': false,
  'Stress': false,
  'Purpose in life': false,
  'Relationships': false,
  'Career': false,
  'Cheat': false,
  'Finance': false,
};

Map<String, bool> communications = {
  'Only me': false,
  'Me and my partner': false,
  'Child': false,
};

Map<String, bool> problems = {
  'Fears': false,
  'Problems with self-control': false,
  'Relationships with one self': false,
  'Emotions': false,
  'My development': false,
  'Relationship with children': false,
  'Career': false,
  'Finance': false,
  'Future': false,
  'Physical condition': false,
  'Lack of Relationship': false,
  'Life changes': false,
  'Relationship with my partner': false,
  'My past': false,
  'Relationship with my parents': false,
};

Map<String, RangeValues> priceOptions = {
  'Up to 1000₴': const RangeValues(0, 1000),
  '500-1000₴': const RangeValues(500, 1000),
  '1000-2000₴': const RangeValues(1000, 2000),
  'More than 2000₴': const RangeValues(2000, 5000),
  'Other': const RangeValues(5000, 10000),
};

List<String> communicationOptions = [
  'Only me',
  'Me and my partner',
  'Child',
];
