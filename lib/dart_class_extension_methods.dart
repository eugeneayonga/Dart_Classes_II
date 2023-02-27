// EXTENSION METHODS are a way to add functionality to existing classes

extension IntegerAddition on int {
  int get luckyInteger => 4;
  int add8() => this + 8;
}

dynamic extensionMethodsDisplay() {
  1.luckyInteger;
  print('1.luckyInteger: ${1.luckyInteger}');

  10.add8();
  print('10.add8(): ${10.add8()}');
}
