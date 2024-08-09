void searchInMap(Map<String, dynamic> input) {
  int? totalBudget = 0;
  int? minSpent = 1234567890;
  int maxSpent = 0;
  double average = 0;
  var dataLength = (input['data'] as List).length;
  String minName = '';
  String maxName = '';

  for (int i = 0; i < dataLength; i++) {
    totalBudget = (totalBudget! + input['data'][i]['moneyspent']) as int?;
    average = totalBudget! / dataLength;
    if (input['data'][i]['moneyspent'] < minSpent) {
      minSpent = input['data'][i]['moneyspent'];
      print(minSpent);
    }
    if (input['data'][i]['moneyspent'] > maxSpent) {
      maxSpent = input['data'][i]['moneyspent'];
    }
  }
  for (int i = 0; i < dataLength; i++) {
    if (input['data'][i]['moneyspent'] == minSpent) {
      minName = input['data'][i]['user'];
    }
    if (input['data'][i]['moneyspent'] == maxSpent) {
      maxName = input['data'][i]['user'];
    }
  }

  print("Total Budget: $totalBudget");
  print("Minimum Spent: $minSpent");
  print("Maximum Spent: $maxSpent");
  print("Average Spent: $average");
  print("Minimum Spent by:$minName");
  print("Minimum Spent by:$maxName");
}

void main() {
  Map<String, dynamic> input = {
    'res': 'Data received',
    'status': 200,
    'time': 30,
    'data': [
      {'user': 'Mutahir', 'id': 1, 'moneyspent': 50},
      {'user': 'Jawad', 'id': 2, 'moneyspent': 10},
      {'user': 'Zeeshan', 'id': 3, 'moneyspent': 70},
      {'user': 'Fahad', 'id': 4, 'moneyspent': 8},
      {'user': 'Omaid', 'id': 5, 'moneyspent': 20}
    ]
  };
  searchInMap(input);
}

uupdateInTable(Map<String, dynamic> input) {
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
