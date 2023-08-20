import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/bloc/cartListBloc/bloc/cart_list_bloc_bloc.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: BlocBuilder<CartListBloc, CartListBlocState>(
        builder: (context, state) {
          if (state is CartItemsUpdated) {
            return ListView.builder(
              itemCount: state.cartItems.length,
              itemBuilder: (context, index) {
                final item = state.cartItems[index];
                return Dismissible(
                  key: ValueKey(item),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    context.read<CartListBloc>().add(RemoveItemFromCart(item));
                  },
                  child: ListTile(
                    title: Text(item),
                  ),
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
