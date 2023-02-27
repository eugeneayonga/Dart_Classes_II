// ABSTRACTION
// 1. Abstraction is the process of hiding the implementation details and showing only functionality to the user.
// 2. In other words, the user will have the information on what the object does instead of how it does it.
// 3. Abstraction can be achieved with either abstract classes or interfaces.
// 4. Abstract classes and interfaces cannot be instantiated, they can only be implemented.
// 5. Abstract classes can have constructors and fields.
// 6. Abstract classes can have implemented methods.
// 7. Abstract classes can have abstract methods.
// 8. Abstract classes can have constructors and fields.

// ABSTRACT CLASS
abstract class UserRepositoryInterface {
  late final List<int> usersList;

  void create(); // Interface method
  List<int> read(); // Interface method
  void update(); // Interface method
  void delete(); // Interface method
}

class UserRepository implements UserRepositoryInterface {
  @override
  late final List<int> usersList;

  UserRepository() {
    usersList = read();
  }

  @override
  void create() => print('Created!');

  @override
  void delete() => print('Deleted!');

  @override
  List<int> read() => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  void update() => print('Updated!');
} // Implements keyword forces the behavior of interfaces to the derived class that implements it, in this case, UserRepository

dynamic abstractionDisplay() {
  UserRepository userRepository = UserRepository();
  userRepository.create();
  userRepository.read();
  userRepository.update();
  userRepository.delete();
}
