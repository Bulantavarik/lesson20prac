void main() {
  // Dog myDog = Dog('Косточки');
  // Cat myCat = Cat('Рыба');
  // Horse myHorse = Horse('Сено');
  // print('*' * 100);
  // myDog.makeNoise();
  // myDog.eat();
  // myDog.sleep();
  // print('*' * 100);

  // myCat.makeNoise();
  // myCat.eat();
  // myCat.sleep();
  // print('*' * 100);
  // myHorse.makeNoise();
  // myHorse.eat();
  // myHorse.sleep();
  // print('*' * 100);
  //++++++++++++++++++++++++++++++++++++++++++++++++
  Student student = Student('Юля', 'Редчиц', '100', 5.0);
  print(
      'Студент ${student.firstName} ${student.lastName}\n из группы ${student.group}\n имеет стипендию: ${student.studasp()} сом');

  Aspirant aspirant =
      Aspirant('Азиз', 'Мадалинов', '102', 4.0, 'учет основных средств');
  print(
      'Аспирант ${aspirant.firstName} ${aspirant.lastName}\n из группы ${aspirant.group}\n с научной работой "${aspirant.nau4pok}"\n имеет стипендию: ${aspirant.studasp()} сом');
}

class Animal {
  String food;

  Animal(this.food);

  void makeNoise() {
    print('Животное издает звук');
  }

  void eat() {
    print('Животное ест $food');
  }

  void sleep() {
    print('спит');
  }
}

class Dog extends Animal {
  Dog(String food) : super(food);

  @override
  void makeNoise() {
    print('Собака лает');
  }

  @override
  void eat() {
    print('Собака ест $food');
  }

  @override
  void sleep() {
    print('собака спит');
  }
}

class Cat extends Animal {
  Cat(String food) : super(food);

  @override
  void makeNoise() {
    print('Кошка мурлычет');
  }

  @override
  void eat() {
    print('Кошка ест $food');
  }

  @override
  void sleep() {
    print('кошка спит');
  }
}

class Horse extends Animal {
  Horse(String food) : super(food);

  @override
  void makeNoise() {
    print('Лошадь ржет');
  }

  @override
  void eat() {
    print('Лошадь ест $food');
  }

  @override
  void sleep() {
    print('лошадь спит');
  }
}

class Student {
  String firstName;
  String lastName;
  String group;
  double average;

  Student(this.firstName, this.lastName, this.group, this.average);

  int studasp() {
    return (average == 5) ? 20000 : 0;
  }
}

class Aspirant extends Student {
  String nau4pok;

  Aspirant(String firstName, String lastName, String group, double average,
      this.nau4pok)
      : super(firstName, lastName, group, average);

  @override
  int studasp() {
    return (average == 5) ? 40000 : 18000;
  }
}
