part of 'cart_list_bloc_bloc.dart';

abstract class CartListBlocState extends Equatable {
  const CartListBlocState();

  @override
  List<Object> get props => [];
}

class CartListBlocInitial extends CartListBlocState {}

class CartItemsUpdated extends CartListBlocState {
  final List<String> cartItems;

  CartItemsUpdated(this.cartItems);

  @override
  List<Object> get props => [cartItems];
}
