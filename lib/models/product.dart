import 'dart:convert';

import 'package:amazon/models/rating.dart';

class Product {
  final String name;
  final String description;
  final double quantity;
  final String category;
  final double price;
  final String? id;

  //final String? userId;
  final List<String> images;
  final List<Rating>? rating;

  Product(
      {required this.name,
      required this.description,
      required this.quantity,
      required this.category,
      required this.price,
      this.id,
      required this.images,
      this.rating});

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map["name"] ?? '',
      description: map["description"] ?? '',
      quantity: double.parse(map["quantity"].toString()),
      category: map["category"],
      price: double.parse(map["price"].toString()),
      id: map["_id"],
      images: List<String>.from(map["images"]),
      rating: map["ratings"] != null
          ? List<Rating>.from(
              map['ratings']?.map(
                (x) => Rating.fromMap(x),
              ),
            )
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "description": description,
      "quantity": quantity,
      "category": category,
      "price": price,
      "id": id,
      "images": images,
      "rating": rating,
    };
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
//

}
