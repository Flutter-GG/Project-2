class User {
  final String name;
  final String email;
  final String password;
  final List? shoppingList;

  const User(
      {required this.name,
      required this.email,
      required this.password,
      this.shoppingList});
}
