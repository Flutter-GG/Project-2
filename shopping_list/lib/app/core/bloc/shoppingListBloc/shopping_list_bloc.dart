import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import '../../../Models/shopping_list_item_model.dart';
part 'shopping_list_event.dart';
part 'shopping_list_state.dart';

class ShoppingListBloc extends Bloc<ShoppingListEvent, ShoppingListState> {
  List<ShoppingListItem> items = [];

  ShoppingListBloc() : super(ShoppingListInitial()) {
    // Load items from JSON
    on<LoadShoppingList>((event, emit) async {
      emit(ShoppingListLoading());
      try {
        String data = await rootBundle.loadString('assets/Data/data.json');
        List<Map<String, dynamic>> jsonResponse =
            List<Map<String, dynamic>>.from(json.decode(data));

        items = jsonResponse
            .map((item) => ShoppingListItem.fromJson(item))
            .toList();

        emit(ShoppingListLoaded(items));
      } catch (e) {
        emit(ShoppingListError('Failed to load shopping list.'));
      }
    });

    on<AddShoppingListItem>((event, emit) {
      print(
          'AddShoppingListItem event triggered with item: ${event.item.name}');

      items.add(event.item);

      print('New list of items: $items');

      emit(ShoppingListLoaded(List.from(items)));
    });

    on<UpdateShoppingListItem>((event, emit) {
      items[event.index] = event.item;
      print(
          'Item at index ${event.index} updated to: ${event.item.name}. Total items: ${items.length}'); // Debug print
      emit(ShoppingListLoaded(List.from(items)));
    });

    on<DeleteShoppingListItem>((event, emit) {
      items.removeAt(event.index);
      print(
          'Item at index ${event.index} removed. Total items now: ${items.length}'); // Debug print
      emit(ShoppingListLoaded(List.from(items)));
    });
  }

  
}
