import 'package:equatable/equatable.dart';

class ShoppingListItem extends Equatable {
  final String category;
  final String name;
  final String quantity;
  final String imagePath;

  ShoppingListItem({
    required this.category,
    required this.name,
    required this.quantity,
    required this.imagePath,
  });
  
 @override
  List<Object> get props => [name, category, quantity, imagePath];

  factory ShoppingListItem.fromJson(Map<String, dynamic> json) {
    return ShoppingListItem(
      category: json['category'],
      name: json['name'],
      quantity: json['quantity'],
      imagePath: json['imagePath'],
    );
  }
}
