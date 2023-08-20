import 'package:ghars/model/user_model.dart';
import 'package:ghars/widgets/welcome_page_widgets/login_sheet.dart';

List listOfPlants = [];
List searchResult = [];
List cartItemList = [];
List indoorPlants = [];
List outdoorPlants = [];

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

bool isIndoor = false;
bool isOutdoor = false;
String? userNmae; //for checking the user name if match the enterd one
String? userEmailText;
bool? isUserAccount = false; //For returning info on cart page and user page

userExist(String email, String password) {
  if (email.isEmpty || password.isEmpty) {
    cartItemList.clear(); //Clearing the main cart
    isUserAccount = false;
    return false;
  } else {
    for (var element in registerdUsers) {
      if (element.email == email) {
        if (element.password == password) {
          userNmae = element.name;
          userEmailText = element.email;
          cartItemList =
              element.shoppingList!; //Cart list will containe user cart list
          isUserAccount = true;
          return true;
        }
      }
    }
  }

  return false;
}

//Clearing fields function
clearFileds() {
  userEmail.clear();
  userPassword.clear();
  msg = "";
}
