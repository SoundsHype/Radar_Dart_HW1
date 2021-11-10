//enum variantKlass{mage, warrior, rogue}
//enum variantType{Beast, Dragon, Elemental}

//Характеристики карт
abstract class Name{
  String output = "Название карты:".padRight(17, " ");
  final String type;
  Name(this.type);
  void paint();
}

abstract class Mana{
  var output = "Стоимость карты:".padRight(17, " ");
  final String type;
  Mana(this.type);
  void paint();
}

abstract class Attack{
  var output = "Атака:".padRight(17, " ");
  final String type;
  Attack(this.type);
  void paint();
}

abstract class Health{
  var output = "Здоровье:".padRight(17, " ");
  final String type;
  Health(this.type);
  void paint();
}

abstract class Type{
  var output = "Тип существа:".padRight(17, " ");
  final String type;
  Type(this.type);
  void paint();
}

//Инициализация
class CardType extends Type {
  CardType(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "Зверь";
        break;
      case "Dragon":
        output += "Дракон";
        break;
      case "Elemental":
        output += "Элементаль";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class mageName extends Name {
  mageName(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "Чёрная кошка";
        break;
      case "Dragon":
        output += "Синдрагоса";
        break;
      case "Elemental":
        output += "Магический бронник";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class mageMana extends Mana {
  mageMana(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "3";
        break;
      case "Dragon":
        output += "8";
        break;
      case "Elemental":
        output += "1";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class mageAttack extends Attack {
  mageAttack(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "3";
        break;
      case "Dragon":
        output += "8";
        break;
      case "Elemental":
        output += "1";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class mageHealth extends Health {
  mageHealth(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "3";
        break;
      case "Dragon":
        output += "8";
        break;
      case "Elemental":
        output += "2";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class warriorName extends Name {
  warriorName(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "Детёныш дикорога";
        break;
      case "Dragon":
        output += "Пепельный дракон";
        break;
      case "Elemental":
        output += "Смоляной дух";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class warriorMana extends Mana {
  warriorMana(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "5";
        break;
      case "Dragon":
        output += "5";
        break;
      case "Elemental":
        output += "7";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class warriorAttack extends Attack {
  warriorAttack(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "3";
        break;
      case "Dragon":
        output += "5";
        break;
      case "Elemental":
        output += "1";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class warriorHealth extends Health {
  warriorHealth(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "6";
        break;
      case "Dragon":
        output += "5";
        break;
      case "Elemental":
        output += "11";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class rogueName extends Name {
  rogueName(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "Ведьмин лис";
        break;
      case "Dragon":
        output += "Воскожуть";
        break;
      case "Elemental":
        output += "Нефритовый дух";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class rogueMana extends Mana {
  rogueMana(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "3";
        break;
      case "Dragon":
        output += "5";
        break;
      case "Elemental":
        output += "4";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class rogueAttack extends Attack {
  rogueAttack(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "3";
        break;
      case "Dragon":
        output += "7";
        break;
      case "Elemental":
        output += "2";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

class rogueHealth extends Health {
  rogueHealth(String variant) : super(variant);
  @override
  void paint() {
    switch (type){
      case "Beast":
        output += "3";
        break;
      case "Dragon":
        output += "5";
        break;
      case "Elemental":
        output += "3";
        break;
      default:
        throw ArgumentError();
    }
    print("$output");
  }
}

//Абстрактная карта
abstract class AbstractCard {
  final String type;
  AbstractCard(this.type);
  Name getName();
  Mana getMana();
  Attack getAttack();
  Health getHealth();
  Type getType() {
    return CardType(type);
  }
}

//Карты классов
class mageAbstarctCard extends AbstractCard{
  mageAbstarctCard(String type) : super(type);
  @override
  Name getName() {
    return mageName(type);
  }
  @override
  Mana getMana() {
    return mageMana(type);
  }
  @override
  Attack getAttack() {
    return mageAttack(type);
  }
  @override
  Health getHealth() {
    return mageHealth(type);
  }
}

class warriorAbstarctCard extends AbstractCard{
  warriorAbstarctCard(String type) : super(type);
  @override
  Name getName() {
    return warriorName(type);
  }
  @override
  Mana getMana() {
    return warriorMana(type);
  }
  @override
  Attack getAttack() {
    return warriorAttack(type);
  }
  @override
  Health getHealth() {
    return warriorHealth(type);
  }
}

class rogueAbstarctCard extends AbstractCard{
  rogueAbstarctCard(String type) : super(type);
  @override
  Name getName() {
    return rogueName(type);
  }
  @override
  Mana getMana() {
    return rogueMana(type);
  }
  @override
  Attack getAttack() {
    return rogueAttack(type);
  }
  @override
  Health getHealth() {
    return rogueHealth(type);
  }
}

//Создание карты
class Application {
  final AbstractCard Card;
  Application(this.Card);
  void createCard(){
    var name = Card.getName()..paint();
    var mana = Card.getMana()..paint();
    var attack = Card.getAttack()..paint();
    var health = Card.getHealth()..paint();
    var type = Card.getType()..paint();
  }
}

//Выбор по классу
class Factory{
  static AbstractCard card(String klass, String type){
    switch (klass){
      case "Mage":
        return mageAbstarctCard(type);
      case "Warrior":
        return warriorAbstarctCard(type);
      case "Rogue":
        return rogueAbstarctCard(type);
      default:
        throw ArgumentError();
    }
  }
}

void main(List<String> arguments){
    arguments.forEach((prop){
     List<String> characteristic = prop.split("/");
    var card = Factory.card("${characteristic[0]}", "${characteristic[1]}");
    var app = Application(card);
    app.createCard();
    print("\n\n");
    });
}