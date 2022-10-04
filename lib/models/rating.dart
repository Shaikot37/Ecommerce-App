import 'dart:convert';

class Rating {
  final String userId;
  final double rating;

  Rating({required this.userId, required this.rating});

  factory Rating.fromMap(Map<String, dynamic> map) {
    return Rating(
      userId: map["userId"],
      rating: double.parse(map["rating"].toString()),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "userId": userId,
      "rating": rating,
    };
  }

  String toJson() => json.encode(toMap());

  factory Rating.fromJson(String source) => Rating.fromMap(json.decode(source));
//

}
