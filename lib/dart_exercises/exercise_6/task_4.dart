import 'package:flutter/foundation.dart';

updateInTable(Map<String, dynamic> input) {
  var populationList = input['data']['population'];
  for (var cityData in populationList) {
    var cityName = cityData.keys.first;
    int population = cityData[cityName];
    if (population % 2 == 0) {
      cityData[cityName] += 1000;
    } else {
      cityData[cityName] += 2000;
    }
  }
  return input['data']['population'];
}

void main() {
  Map<String, dynamic> input = {
    'res': 'Data Received',
    'status': 200,
    'time': 30,
    'data': {
      'population': [
        {'lahore': 32442},
        {'pindi': 31235},
        {'peshawar': 3231},
        {'quetta': 3213},
        {'user': 4211},
      ]
    }
  };
  if (kDebugMode) {
    print(updateInTable(input));
  }
}

