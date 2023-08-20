import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'cart_list_bloc_event.dart';
part 'cart_list_bloc_state.dart';


class CartListBloc extends Bloc<CartListBlocEvent, CartListBlocState> {
  final List<String> _cartItems = [];

  CartListBloc() : super(CartListBlocInitial()) {
    on<CartListBlocEvent>((event, emit) {
      if (event is AddItemToCart) {
        _cartItems.add(event.item);
        emit(CartItemsUpdated(_cartItems));
      } else if (event is RemoveItemFromCart) {
        _cartItems.remove(event.item);
        emit(CartItemsUpdated(_cartItems));
      } else if (event is ViewCartItems) {
        emit(CartItemsUpdated(_cartItems));
      }
    });
  }
}
