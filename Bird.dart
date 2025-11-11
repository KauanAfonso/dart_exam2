import 'dart:io';
import 'Animal.dart';


class Bird extends Animal {
Bird({required String name, required String specie, required String size}) : super(name:name, specie:specie, size:size);

  @override
  void makeSound() {
    print("Bi bi ");
  }

  @override
  void makeMeal() {
    print("$name bird is eating now.");
  }

}
