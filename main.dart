main() {
  // Variaveis e tipagem
  // String name = "Gabriel";
  // const int age = 24;
  // double altura = 1.8;
  // bool souEstudante = false;

  // print(name);

  // // operações

  // var a = 10;
  // var b = 10;
  // var soma = a + b;
  // var subtracao = a - b;
  // var multiplicao = a * b;
  // var divisao = a / b;

  // print("Resultado da operação soma: " + soma.toString());
  // print("Resultado da operação subração: ${subtracao}");

  // // && = and
  // // || = or
  // if (age > 18) {
  //   print("Maior de idade");
  // } else if (age == 18) {
  //   print("Parabens!");
  // } else {
  //   print("Menor de idade");
  // }
  // // i = i + 1 -> i++
  // for (var i = 0; i < 3; i = i + 1) {
  //   print(i);
  // }
  // var i = 0;
  // while (i < 3) {
  //   print(i);
  //   i++;
  // }

  // void digaOla() {
  //   print('Olá');
  // }

  // int somaFuncao(int valor1, int valor2) {
  //   var soma = valor1 + valor2;
  //   return soma;
  // }

  // var cachorro = Dog('Rex', 'Caramelo', false);

  // cachorro.emitirSom();
  // cachorro.comer();

  Animal passaro = Bird('Calopsita', 'Amarelo', true);
  Animal dog = Dog('Rex', 'Caramelo', false);
}

class Animal {
  String nome;
  String cor;
  // Encapsulamento
  final bool _vacinado;

  Animal(this.nome, this.cor, this._vacinado);

  void emitirSom() {
    print('Animal emitindo som...');
  }

  void comer() {
    print('$nome esta comendo...');
  }
}

// Herança

class Dog extends Animal {
  Dog(super.nome, super.cor, super.vacinado);

  @override
  void emitirSom() {
    print("Latir");
  }
}

class Bird extends Animal implements Voador {
  Bird(super.nome, super.cor, super.vacinado);

  @override
  void voar() {
    print("$nome, esta voando");
  }
}

// Abstração

abstract class Voador {
  void voar();
}

// Polimorfismo