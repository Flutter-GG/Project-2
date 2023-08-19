import '../data_to_be_accessed.dart';
import '../model/plants_model.dart';

increaseQuantity(Plants plants) {
  plants.quantity = plants.quantity! + 1;
}

decreaseQuantity(Plants plants) {
  if (plants.quantity! > 1) {
    plants.quantity = plants.quantity! - 1;
  }
}

//Calculate the indivisual total price of the plant
plantsTotal(Plants plants) {
  int totalPrice = plants.price! * plants.quantity!;
  return totalPrice;
}

//Calculate the overall total price of all cart items  
overallTotalPrice() {
  int overAllPrice = 0;
  for (int i = 0; i < cartItemList.length; i++) {
    overAllPrice = overAllPrice +
        (cartItemList[i].price * cartItemList[i].quantity) as int;
  }
  return overAllPrice;
}
