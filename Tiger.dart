import 'dart:io';
import 'Animal.dart';


class Tiger extends Animal {
Tiger({required String name, required String specie, required String size}) : super(name:name, specie:specie, size:size);

  @override
  void makeSound() {
    print("Rarr rarr");
  }

  @override
  void makeMeal() {
    print("$name Tiger is eating now.");
  }

}
