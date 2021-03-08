import 'dart:convert';

class ModelMenu {
  String judulProduct;
  String deskripsiProduct;
  String ratingProduct;
  String priceProduct;

  ModelMenu({this.judulProduct,
    this.deskripsiProduct,
    this.priceProduct,
    this.ratingProduct});

  factory ModelMenu.fromJson(Map<String, dynamic> map) {
    return ModelMenu(
        judulProduct: map["judulProduct"],
        deskripsiProduct: map["deskripsiProduct"],
        priceProduct: map["priceProduct"],
        ratingProduct: map["ratingProduct"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "judulProduct": judulProduct,
      "deskripsiProduct": deskripsiProduct,
      "priceProduct": priceProduct,
      "ratingProduct": ratingProduct
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'ModelMenu{judulProduct: $judulProduct, deskripsiProduct: $deskripsiProduct, priceProduct: $priceProduct, ratingProduct: $ratingProduct}';
  }
}

List<ModelMenu> modelMenuFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<ModelMenu>.from(data.map((item) => ModelMenu.fromJson(item)));
}

String modelMenuToJson(ModelMenu data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
