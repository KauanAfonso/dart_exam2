import 'dart:io';
import 'Animal.dart';


class Lion extends Animal {
Lion({required String name, required String specie, required String size}) : super(name:name, specie:specie, size:size);

  @override
  void makeSound() {
    print("URRR URRR");
  }

  @override
  void makeMeal() {
    print("$name lion is eating now.");
  }

}
