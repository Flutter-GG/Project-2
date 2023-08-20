part of 'shopping_list_bloc.dart';

abstract class ShoppingListEvent extends Equatable {}

class LoadShoppingList extends ShoppingListEvent {
  @override
  List<Object> get props => [];
}

class AddShoppingListItem extends ShoppingListEvent {
  final ShoppingListItem item;

  AddShoppingListItem(this.item);

  @override
  List<Object> get props => [item];
}

class UpdateShoppingListItem extends ShoppingListEvent {
  final int index;
  final ShoppingListItem item;

  UpdateShoppingListItem(this.index, this.item);

  @override
  List<Object> get props => [index, item];
}

class DeleteShoppingListItem extends ShoppingListEvent {
  final int index;

  DeleteShoppingListItem(this.index);

  @override
  List<Object> get props => [index];
}

