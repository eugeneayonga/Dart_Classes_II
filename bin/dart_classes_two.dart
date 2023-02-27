import 'package:dart_classes_two/dart_classes_two.dart' as dart_classes_two;
import 'package:dart_classes_two/dart_class_inheritance.dart'
    as dart_class_inheritance;
import 'package:dart_classes_two/dart_class_abstraction.dart'
    as dart_class_abstraction;

void main(List<String> arguments) {
  print('Hello world: ${dart_classes_two.calculate()}!');
  print('***********************************************');

  print('${dart_class_inheritance.animalsDisplay()}');
  print('***********************************************');

  print('${dart_class_abstraction.abstractionDisplay()}');
  print('***********************************************');
}
