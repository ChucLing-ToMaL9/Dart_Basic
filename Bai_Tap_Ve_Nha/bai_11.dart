void main() {
  Animal dog = Dog('Bích La', 4);
  Animal cat = Cat('Miu', 2);

  dog.xuat();
  cat.xuat();
}

// Lop Animal
abstract class Animal {
  String? name;
  int? foot;

  Animal(this.name, this.foot);
  void run();
  void languege();
  void xuat() {
    print('-----------------------------------');
    print('Name: $name \t Foot: $foot');
  }
}

// Lop Dog
class Dog extends Animal {
  Dog(super.name, super.foot);

  @override
  void run() {
    // TODO: implement run
    print('Run: Run on $foot legs.');
  }

  @override
  void languege() {
    // TODO: implement languege
    print('Languege: Bark.');
  }

  @override
  void xuat() {
    // TODO: implement xuat
    super.xuat();
    run();
    languege();
  }
}

// Lop Cat
class Cat extends Animal {
  Cat(super.name, super.foot);

  @override
  void run() {
    // TODO: implement run
    print('Run: Run on $foot legs.');
  }

  @override
  void languege() {
    // TODO: implement languege
    print('Languege: Meow.');
  }

  @override
  void xuat() {
    // TODO: implement xuat
    super.xuat();
    run();
    languege();
  }
}
