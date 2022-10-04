import 'dart:convert';

import 'package:amazon/models/product.dart';

class Order {
  final String id;
  final List<Product> products;
  final List<int> quantity;
  final String address;
  final String userId;
  final int orderedAt;
  final int status;
  final double totalPrice;

  Order({
    required this.id,
    required this.products,
    required this.quantity,
    required this.address,
    required this.userId,
    required this.orderedAt,
    required this.status,
    required this.totalPrice,
  });

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map["_id"],
      products: List<Product>.from(
          map['products']?.map((e) => Product.fromMap(e['product']))),
      quantity: List<int>.from(
        map['products']?.map((e) => e['quantity']),
      ),
      address: map["address"],
      userId: map["userId"],
      orderedAt: int.parse(map["orderedAt"].toString()) ?? 0,
      status: int.parse(map["status"].toString()) ?? 0,
      totalPrice: double.parse(map['totalPrice'].toString()) ?? 0.0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "products": products.map((e) => e.toMap()).toList(),
      "quantity": quantity,
      "address": address,
      "userId": userId,
      "orderedAt": orderedAt,
      "status": status,
      "totalPrice": totalPrice,
    };
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));
}
