part of 'cart_list_bloc_bloc.dart';

abstract class CartListBlocEvent extends Equatable {
  const CartListBlocEvent();

  @override
  List<Object> get props => [];
}

class AddItemToCart extends CartListBlocEvent {
  final String item;

  AddItemToCart(this.item);

  @override
  List<Object> get props => [item];
}

class RemoveItemFromCart extends CartListBlocEvent {
  final String item;

  RemoveItemFromCart(this.item);

  @override
  List<Object> get props => [item];
}

class ViewCartItems extends CartListBlocEvent {}
