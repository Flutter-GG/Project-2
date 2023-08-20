part of 'shopping_list_bloc.dart';

abstract class ShoppingListEvent extends Equatable {}

class LoadShoppingList extends ShoppingListEvent {
  @override
  List<Object> get props => [];
}