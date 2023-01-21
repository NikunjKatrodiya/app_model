class CommonModel {
  final String? country;
  final List<FruitsList>? fruitsList;

  CommonModel({this.fruitsList, this.country=""});
  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      country: json["country"],
      fruitsList: List<FruitsList>.from(
          json["fruits_list"].map((value) => FruitsList.fromJson(value))),
    );
  }
}

class FruitsList {
  final String? name;
  final String? color;
  final String? state;
  final int? price;

  FruitsList({
    this.price,
    this.name = "",
    this.color = "",
    this.state = "",
  });
  factory FruitsList.fromJson(Map<String, dynamic> json) {
    return FruitsList(
      name: json['name'],
      color: json['color'],
      price: json['price'],
      state: json['state'],
    );
  }
}
