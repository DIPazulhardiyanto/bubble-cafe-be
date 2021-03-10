class Product {
  final String id;
  final String judulProduct;
  final String deskripsiProduct;
  final String ratingProduct;
  final String priceProduct;

  Product({this.id, this.judulProduct,
    this.deskripsiProduct,
    this.priceProduct,
    this.ratingProduct});

  Product.fromJson(Map json)
      : id = json["id"],
        judulProduct = json["judulProduct"],
        deskripsiProduct = json["deskripsiProduct"],
        priceProduct = json[" this.priceProduct,"],
        ratingProduct = json["ratingProduct"];

  Map toJson() {
    return {
      'id': id,
      'judulProduct': judulProduct,
      'deskripsiProduct': deskripsiProduct,
      'priceProduct': priceProduct,
      'ratingProduct': ratingProduct
    };
  }
}
