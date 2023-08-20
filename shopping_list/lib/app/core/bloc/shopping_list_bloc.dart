import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import '../../Models/shopping_list_item_model.dart';
part 'shopping_list_event.dart';
part 'shopping_list_state.dart';


class ShoppingListBloc extends Bloc<ShoppingListEvent, ShoppingListState> {
  ShoppingListBloc() : super(ShoppingListInitial()) {
    on<LoadShoppingList>((event, emit) async {
      emit(ShoppingListLoading());
      try {
        String data = await rootBundle.loadString('assets/Data/data.json');
        List<Map<String, dynamic>> jsonResponse = List<Map<String, dynamic>>.from(json.decode(data));

        List<ShoppingListItem> items = jsonResponse
            .map((item) => ShoppingListItem.fromJson(item))
            .toList();

        emit(ShoppingListLoaded(items));
      } catch (e) {
        emit(ShoppingListError('Failed to load shopping list.'));
      }
    });
  }
}
