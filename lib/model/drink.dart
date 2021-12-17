

class Drink {
  final int id;
  final String name;
  final String category;
  final String alcoholic;
  final String glass;
  final String instruction;
  final String thumb;

  Drink(this.id, this.name, this.category, this.alcoholic, this.glass, this.instruction, this.thumb);

  factory Drink.fromJson(dynamic json) {
    return Drink(
        json["idDrink"],
        json["strDrink"],
        json["strCategory"],
        json["strAlcoholic"],
        json["strGlass"],
        json["strInstructions"],
        json["strDrinkThumb"]);
  }
}
