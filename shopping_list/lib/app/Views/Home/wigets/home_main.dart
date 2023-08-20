import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/bloc/shoppingListBloc/shopping_list_bloc.dart';
import '../../../utils/constants/colors.dart';
import 'item_card.dart';

class HomeMainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShoppingListBloc, ShoppingListState>(
      listener: (context, state) {
        // No need to listen to ShoppingListItemAdded anymore
      },
      builder: (context, state) {
        if (state is ShoppingListLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is ShoppingListLoaded) {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
          if (state.items.isEmpty) {
            return Center(
              child: Text(
                'No items in the shopping list.',
                style: TextStyle(color: textColor),
              ),
            );
          }
          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              return ShoppingItemCard(item: state.items[index], index: index);
            },
          );
        } else if (state is ShoppingListError) {
          return Center(
            child: Text(
              state.message,
              style: TextStyle(color: textColor),
            ),
          );
        }
        return Center(
          child: Text(
            'Start by loading the shopping list.',
            style: TextStyle(color: textColor),
          ),
        );
      },
    );
  }
}
