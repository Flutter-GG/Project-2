import 'package:ghars/model/user_model.dart';

List listOfPlants = [];
List searchResult = [];
List cartItemList = [];
List indoorPlants = [];
List outdoorPlants = [];

bool isIndoor = false;
bool isOutdoor = false;

//Users cart
List mjdCart = [];
List nasserCart = [];

List<User> registerdUsers = [
  User(
    name: "Mjd",
    email: "mjd@gmail.com",
    password: "123",
    shoppingList: mjdCart,
  ),
  User(
    name: "Nasser",
    email: "nasser@gmail.com",
    password: "321",
    shoppingList: nasserCart,
  )
];


String? userNmae; //for checking the user name match enterd one
bool? isUserAccount; //For returning info on cart page and user page


userExist(String email, String password) {
  for (var element in registerdUsers) {
    if (element.email == email) {
      if (element.password == password) {
        userNmae = element.name;
        return true;
      }
    }
  }
  return false;
}

/**
  for (int i =0 ; i < registerdUsers.length ; i++) {
    if(registerdUsers[i].name == name){
      if(registerdUsers[i].password == password){
        
      }
    }
  }
 */