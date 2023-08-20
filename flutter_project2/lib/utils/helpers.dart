// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_project2/components/image_widget.dart';
import 'package:flutter_project2/data/data_model.dart';
import 'package:flutter_project2/main.dart';

//this method chooses an image to display on the item based on the category
chooseImg(ShoppingItems item, double size) {
  switch (item.category) {
    case Category.groceries:
      return ImageWidget(
        imgPath: 'assets/images/groceries.jpg',
        imgHeight: size,
        imgWidth: size,
        isNetwork: false,
      );
      break;
    case Category.clothes:
      return ImageWidget(
        imgPath: 'assets/images/clothes.avif',
        imgHeight: size,
        imgWidth: size,
        isNetwork: false,
      );
      break;
    case Category.householdItem:
      return ImageWidget(
        imgPath: 'assets/images/household.jpg',
        imgHeight: size,
        imgWidth: size,
        isNetwork: false,
      );
      break;
    case Category.personalCare:
      return ImageWidget(
        imgPath: 'assets/images/selfcare.jpg',
        imgHeight: size,
        imgWidth: size,
        isNetwork: false,
      );
      break;
    default:
  }
}

//this method returens a filtered list based on the category
filter(Category value) {
  List<ShoppingItems> filteredList = [];
  for (var element in oneUserList) {
    if (element.category == value) {
      filteredList.add(element);
    }
  }
  return filteredList;
}

//this method makes sure that the user is not registred
isUserExist(String name) {
  for (var element in usersList) {
    if (element.userName == name) {
      return true;
    } else {
      return false;
    }
  }
}

//this method returns the shopping list for the user that logged in
getUserList() {
  List<ShoppingItems> myList = [];
  for (var element in usersList) {
    if (element.userName == userName) {
      for (var shoppingItem in element.shoppingItems!) {
        myList.add(shoppingItem);
      }
      return myList;
    }
  }
}
