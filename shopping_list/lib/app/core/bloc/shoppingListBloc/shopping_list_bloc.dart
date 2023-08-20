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

// Inside your on<AddShoppingListItem> bloc event
    on<AddShoppingListItem>((event, emit) {
      items.add(event.item);
      print(
          'Item added: ${event.item.name}. Total items: ${items.length}'); // Debug print
      emit(ShoppingListLoaded(List.from(items)));
    });

// Similar for Update and Delete events:
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
