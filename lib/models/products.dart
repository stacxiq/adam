import 'dart:convert';

class Product {
  final String name;
  final String image;
  final String description;
  final int price;
  final int offer;
  final int quantity;
  Product(
      {required this.name,
      required this.image,
      required this.description,
      required this.price,
      required this.offer,
      required this.quantity});

  Product copyWith({
    String? name,
    String? image,
    String? description,
    int? price,
    int? offer,
    int? quantity,
  }) {
    return Product(
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
      price: price ?? this.price,
      offer: offer ?? this.offer,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'price': price,
      'offer': offer,
      'quantity': quantity,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toInt() ?? 0,
      offer: map['offer']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(name: $name, image: $image, description: $description, price: $price, offer: $offer, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.name == name &&
        other.image == image &&
        other.description == description &&
        other.price == price &&
        other.offer == offer &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        image.hashCode ^
        description.hashCode ^
        price.hashCode ^
        offer.hashCode ^
        quantity.hashCode;
  }
}

final productList = [
  Product(
      name: 'Item 1',
      image: 'assets/images/1.png',
      description:
          'Ea deserunt ut ea est ea enim. Irure proident nisi culpa velit in laboris commodo aute est voluptate adipisicing minim exercitation. Dolore cillum anim laborum irure ipsum labore deserunt enim est do eu adipisicing laborum ullamco. Proident magna exercitation enim nostrud enim ad. Veniam magna proident non ullamco.',
      quantity: 22,
      price: 1200,
      offer: 10),
  Product(
      name: 'Item 2',
      image: 'assets/images/2.png',
      description:
          'Ea deserunt ut ea est ea enim. Irure proident nisi culpa velit in laboris commodo aute est voluptate adipisicing minim exercitation. Dolore cillum anim laborum irure ipsum labore deserunt enim est do eu adipisicing laborum ullamco. Proident magna exercitation enim nostrud enim ad. Veniam magna proident non ullamco.',
      quantity: 12,
      price: 2500,
      offer: 5),
  Product(
      name: 'Item 3',
      image: 'assets/images/3.png',
      description:
          'Ea deserunt ut ea est ea enim. Irure proident nisi culpa velit in laboris commodo aute est voluptate adipisicing minim exercitation. Dolore cillum anim laborum irure ipsum labore deserunt enim est do eu adipisicing laborum ullamco. Proident magna exercitation enim nostrud enim ad. Veniam magna proident non ullamco.',
      quantity: 7,
      price: 7500,
      offer: 0),
  Product(
      name: 'Item 4',
      image: 'assets/images/4.png',
      description:
          'Ea deserunt ut ea est ea enim. Irure proident nisi culpa velit in laboris commodo aute est voluptate adipisicing minim exercitation. Dolore cillum anim laborum irure ipsum labore deserunt enim est do eu adipisicing laborum ullamco. Proident magna exercitation enim nostrud enim ad. Veniam magna proident non ullamco.',
      quantity: 10,
      price: 225500,
      offer: 0),
  Product(
      name: 'Item 1',
      image: 'assets/images/1.png',
      description:
          'Ea deserunt ut ea est ea enim. Irure proident nisi culpa velit in laboris commodo aute est voluptate adipisicing minim exercitation. Dolore cillum anim laborum irure ipsum labore deserunt enim est do eu adipisicing laborum ullamco. Proident magna exercitation enim nostrud enim ad. Veniam magna proident non ullamco.',
      quantity: 22,
      price: 1200,
      offer: 10),
  Product(
      name: 'Item 2',
      image: 'assets/images/2.png',
      description:
          'Ea deserunt ut ea est ea enim. Irure proident nisi culpa velit in laboris commodo aute est voluptate adipisicing minim exercitation. Dolore cillum anim laborum irure ipsum labore deserunt enim est do eu adipisicing laborum ullamco. Proident magna exercitation enim nostrud enim ad. Veniam magna proident non ullamco.',
      quantity: 12,
      price: 2500,
      offer: 5),
  Product(
      name: 'Item 3',
      image: 'assets/images/3.png',
      description:
          'Ea deserunt ut ea est ea enim. Irure proident nisi culpa velit in laboris commodo aute est voluptate adipisicing minim exercitation. Dolore cillum anim laborum irure ipsum labore deserunt enim est do eu adipisicing laborum ullamco. Proident magna exercitation enim nostrud enim ad. Veniam magna proident non ullamco.',
      quantity: 7,
      price: 7500,
      offer: 0),
  Product(
      name: 'Item 4',
      image: 'assets/images/4.png',
      description:
          'Ea deserunt ut ea est ea enim. Irure proident nisi culpa velit in laboris commodo aute est voluptate adipisicing minim exercitation. Dolore cillum anim laborum irure ipsum labore deserunt enim est do eu adipisicing laborum ullamco. Proident magna exercitation enim nostrud enim ad. Veniam magna proident non ullamco.',
      quantity: 10,
      price: 225500,
      offer: 0),
];
