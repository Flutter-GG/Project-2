import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_list/app/utils/constants/colors.dart';
import '../../core/bloc/cartListBloc/bloc/cart_list_bloc_bloc.dart';
import '../../core/bloc/shoppingListBloc/shopping_list_bloc.dart';
import '../Add/add_item_view.dart';
import '../Update/update_view.dart';
import '../Cart/cart_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Shopping List'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to CartView when cart icon is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartView()),
              );
            },
          )
        ],
      ),
      body: BlocListener<ShoppingListBloc, ShoppingListState>(
        listener: (context, state) {
          if (state is ShoppingListLoaded) {
            Navigator.of(context).popUntil((route) => route.isFirst);
          }
        },
        child: BlocBuilder<ShoppingListBloc, ShoppingListState>(
          builder: (context, state) {
            if (state is ShoppingListLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is ShoppingListLoaded) {
              if (state.items.isEmpty) {
                return Center(child: Text('No items in the shopping list.'));
              }
              return ListView.builder(
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.items[index].name),
                    subtitle: Text(
                        'Category: ${state.items[index].category}\nQuantity: ${state.items[index].quantity}'),
                    leading: IconButton(
                      icon: Icon(Icons.add_shopping_cart),
                      onPressed: () {
                        BlocProvider.of<CartListBloc>(context)
                            .add(AddItemToCart(state.items[index].name));
                      },
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UpdateItemView(
                                item: state.items[index], index: index),
                          ),
                        );
                      },
                    ),
                    onLongPress: () {
                      BlocProvider.of<ShoppingListBloc>(context)
                          .add(DeleteShoppingListItem(index));
                    },
                  );
                },
              );
            } else if (state is ShoppingListError) {
              return Center(child: Text(state.message));
            }
            return Center(child: Text('Start by loading the shopping list.'));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AddItemView()),
          );
        },
        child: Icon(Icons.add),
        tooltip: 'Add Item',
      ),
    );
  }
}
