import 'dart:io';
import 'Animal.dart';
import 'Lion.dart';
import 'Tiger.dart';
import 'Bird.dart';

void main() {
  /*---------------------------Primeira parte da avaliação-------------------*/

  print("\nPrimeira parte da avaliação\n");
  Lion lion = Lion(name: "Simba", specie: "Leao da selva", size: "Medio");
  Tiger tiger = Tiger(name: "Tigrinho", specie: "Panthera tigre", size: "Grande");
  Bird bird = Bird(name: "Blue", specie: "Arara", size: "pequeno");

  lion.makeSound();
  lion.makeMeal();

  tiger.makeSound();
  tiger.makeMeal();

  bird.makeSound();
  bird.makeMeal();

/*---------------------------fim da Primeira parte da avaliação-------------------*/










/*--------------------------- Segunda parte da avaliação-------------------*/

print("\nSegunda parte da avaliação\n");

List<Animal> animals = [
  Lion(name: "Mufasa", specie: "Leao da selva", size: "Grande"),
  Tiger(name: "Shere Khan", specie: "Panthera tigre", size: "Grande"),
  Bird(name: "Polly", specie: "Papagaio", size: "Pequeno"),
  Lion(name: "Nala", specie: "Leao da selva", size: "Medio"),
  Tiger(name: "Richard Parker", specie: "Panthera tigre", size: "Grande"),
  Bird(name: "Tweety", specie: "Canario", size: "Pequeno"),
];

String? choice;

do {

  print("\nBem-vindo ao sistema de gerenciamento de animais!");
  menu();
  print("Escolha uma opção: ");
  choice = stdin.readLineSync();

  if(choice == "5"){
    break;
  }

  switch(choice){
    case "1":
      listAnimal(animals);
      break;
    case "2":
      registerAnimal(animals);
      break;
    case "3":
      print("Digite o índice do animal a ser removido: ");
      int index = int.parse(stdin.readLineSync()!);
      removeAnimal(animals, index);
      break;
    case "4":
      stdout.write("Digite a espécie para filtrar: (Grande, Medio, Pequeno) ");
      String size = stdin.readLineSync()!;
      filtringBySize(animals, size);
      break;
    case "5":
      print("Saindo do sistema. Até mais!");
      break;
    default:
      print("Opção inválida. Tente novamente.");
  }
  
} while(choice != '5');

}


//functions para o sistma

void menu(){
  print("\nMenu de opções:");
  print("1 - Listar todos os animais");
  print("2 - Cadastrar animal");
  print("3 - Remover um animal");
  print("4 - Filtrar animal po size");
  print("5 - Sair");
}

void listAnimal(List<Animal> animals){
  print("\nLista de animais:");
  for(int i = 0; i < animals.length; i++){
    Animal animal = animals[i];

    print("${i + 1} - Nome: ${animal.name}, Espécie: ${animal.specie}, Tamanho: ${animal.size}");
  }
}

void registerAnimal(List<Animal> animals){
  print("\nCadastro de novo animal:");
  stdout.write("Digite o nome do animal: ");
  String name = stdin.readLineSync()!;

  stdout.write("Digite a espécie do animal (Lion,Tiger, Bird): ");
  String specie= stdin.readLineSync()!;

  stdout.write("Digite o tamanho do animal (Pequeno, Medio, Grande): ");
  String size =stdin.readLineSync()!;

  Animal newAnimal;

  switch(specie.toLowerCase()){
    case "lion":
      newAnimal = Lion(name: name, specie: specie, size: size);
      break ;
    case "tiger":
      newAnimal = Tiger(name: name, specie: specie, size: size);
      break;

    case "bird":
      newAnimal = Bird(name: name, specie: specie, size: size);
      break;
    default:
      print("Espécie inválida. Animal não cadastrado.");
      return;
  }

  animals.add(newAnimal);
  print("Animal cadastrado com sucesso!");
}


void filtringBySize(List<Animal> animals, String size){
  print("\nAnimais da espécie '$size':");

  for(Animal animal in animals){
    if(animal.size.toLowerCase() == size.toLowerCase()){
      print("Nome: ${animal.name}, Espécie: ${animal.size}, Tamanho: ${animal.size}");
    }
  }

}

void removeAnimal(List<Animal> animals, int index){
  if(index >= 0 && index < animals.length){
    animals.removeAt(index);
    print("Animal removido com sucesso!");

  }else {
    print("Índice inválido.");
  }
}