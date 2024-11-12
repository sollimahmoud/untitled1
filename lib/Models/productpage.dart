class Product {
  List data;

  Product({required this.data});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(data: json['data']['product']);
  }
}
