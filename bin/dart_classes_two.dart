import 'dart:ffi';

import 'package:dart_classes_two/dart_classes_two.dart' as dart_classes_two;
import 'package:dart_classes_two/dart_class_inheritance.dart'
    as dart_class_inheritance;
import 'package:dart_classes_two/dart_class_abstraction.dart'
    as dart_class_abstraction;
import 'package:dart_classes_two/dart_class_mixins.dart' as dart_class_mixins;
import 'package:dart_classes_two/dart_class_extension_methods.dart'
    as dart_class_extension_methods;

void main(List<String> arguments) {
  print('Hello world: ${dart_classes_two.calculate()}!');
  print('***********************************************');

  print('${dart_class_inheritance.animalsDisplay()}');
  print('***********************************************');

  print('${dart_class_abstraction.abstractionDisplay()}');
  print('***********************************************');

  print('${dart_class_mixins.mixinsDisplay()}');
  print('***********************************************');

  print('${dart_class_extension_methods.extensionMethodsDisplay()}');
  print('***********************************************');
}
