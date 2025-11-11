import "dart:io";


class Animal {
  String _name;
  String _specie;
  String _size;

  Animal({required String name, required String specie, required String size}):_name = name, _specie = specie, _size = size;

  void makeSound(){
    print("Some generic animal sound");
  }

  void makeMeal(){
    print("$_name is eating.");
  }

  get name => _name;
  get specie => _specie;  
  get size => _size;

}