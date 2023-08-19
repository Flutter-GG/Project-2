class ShoppingListItem {
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

  factory ShoppingListItem.fromJson(Map<String, dynamic> json) {
    return ShoppingListItem(
      category: json['category'],
      name: json['name'],
      quantity: json['quantity'],
      imagePath: json['imagePath'],
    );
  }
}
