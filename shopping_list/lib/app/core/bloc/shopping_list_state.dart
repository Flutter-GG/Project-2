part of 'shopping_list_bloc.dart';

abstract class ShoppingListState extends Equatable {}

class ShoppingListInitial extends ShoppingListState {
  @override
  List<Object> get props => [];
}

class ShoppingListLoading extends ShoppingListState {
  @override
  List<Object> get props => [];
}

class ShoppingListLoaded extends ShoppingListState {
  final List<ShoppingListItem> items;

  ShoppingListLoaded(this.items);

  @override
  List<Object> get props => [items];
}

class ShoppingListError extends ShoppingListState {
  final String message;

  ShoppingListError(this.message);

  @override
  List<Object> get props => [message];
}