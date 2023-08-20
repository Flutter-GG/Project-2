import 'package:flutter/material.dart';
import 'package:shopping_list/app/utils/constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/bloc/shopping_list_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: BlocBuilder<ShoppingListBloc, ShoppingListState>(
        builder: (context, state) {
          if (state is ShoppingListLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is ShoppingListLoaded) {
            return ListView.builder(
              itemCount: state.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.items[index].name),
                  // ... other properties of your ShoppingListItem
                );
              },
            );
          } else if (state is ShoppingListError) {
            return Center(child: Text(state.message));
          }
          return Center(child: Text('Start by loading the shopping list.'));
        },
      ),
    );
  }
}
