import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_list/app/utils/constants/colors.dart';
import '../../core/bloc/cartListBloc/bloc/cart_list_bloc_bloc.dart';
import 'widgets/cart_item_card.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: BlocBuilder<CartListBloc, CartListBlocState>(
        builder: (context, state) {
          if (state is CartItemsUpdated) {
            return ListView.builder(
              itemCount: state.cartItems.length,
              itemBuilder: (context, index) {
                final item = state.cartItems[index];
                return CartItemCard(
                  item: item,
                  onDismissed: () {
                    context.read<CartListBloc>().add(RemoveItemFromCart(item));
                  },
                );
              },
            );
          } else {
            return Center(child: Text("Your cart is empty"));
          }
        },
      ),
    );
  }
}
