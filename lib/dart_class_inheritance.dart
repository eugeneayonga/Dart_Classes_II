// inheritance --> sharing of properties and methods between classes
// Dart is a single inheritance language
// Dart is a class-based object-oriented language

class Animal {
  final String name; // field

  Animal({required this.name}); // constructor

  void whatAmI() => print("I'm an animal"); // method
  void chase(Animal a) {}
}

// Predator-Prey relationship
class Mouse extends Animal {
  Mouse(String name) : super(name: 'Jerry'); // constructor
}

class Cat extends Animal {
  Cat(String name) : super(name: 'Tom'); // constructor

  @override
  void chase(covariant Mouse a) => print(
      "I'm chasing the mouse ${a.name}"); // covariant --> allows the method to accept a subclass of the parameter type, in this case, a subclass of Animal
}

class Bird extends Animal {
  // Bird({required super.name});
  Bird(String name) : super(name: name); // constructor
}

class Hen extends Bird {
  // Hen(super.name);
  Hen(String name) : super(name); // constructor

  @override
  void whatAmI() =>
      print("I'm a hen"); // polymorphism --> super class method overriding
  // We can also add new methods unique only to the subclass
  void layEgg() => print("I'm laying an egg");
}

dynamic animalsDisplay() {
  var hen = Hen("Blackie");
  print('hen.name: ${hen.name}');

  hen.whatAmI();
  hen.layEgg();

  Cat("Tom").chase(Mouse("Jerry"));
}
