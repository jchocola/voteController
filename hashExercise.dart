import 'dart:io';

void main() {
  String voterName = "";
  bool choice;
  Map<String, bool> myMap = {};
  while (voterName.toLowerCase() != "stop") {
    print("new voter");
    print("Name:");
    voterName = stdin.readLineSync()!;
    if (myMap.containsKey(voterName)) {
      print("idi na hui");
    } else {
      print("thanks for vote , enter your choise (true/false)");
      var ch = stdin.readLineSync()!;
      choice = parseBool(ch);
      myMap.addAll({voterName: choice});
    }
  }
  print(myMap);
}

bool parseBool(String str) {
  if (str.toLowerCase() == 'true')
    return true;
  else if (str.toLowerCase() == 'false')
    return false;
  else
    return false;
}
