 
import 'dart:convert';
import 'package:http/http.dart' as http;

class Product {
  final int id;
  final String name;
  final double price;

  Product({this.id, this.name, this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
    );
  }
}

Future<List<Product>> fetchProducts() async {
  final response = await http.get('https://api.example.com/products');

  if (response.statusCode == 200) {
    List<dynamic> productsJson = json.decode(response.body);
    return productsJson.map((productJson) => Product.fromJson(productJson)).toList();
  } else {
    throw Exception('Failed to load products');
  }
}
