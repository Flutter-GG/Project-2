import 'package:project2/data/global_data.dart';

sortPriceHighest(){
  listProducts.sort((b, a) => a.price!.compareTo(b.price!),);    
}
sortPriceLowest(){
  listProducts.sort((a, b) => a.price!.compareTo(b.price!),);    
}
sortNameIncreases(){
  listProducts.sort((a, b) => a.name!.compareTo(b.name!),);    
}
sortNameDecreases(){
  listProducts.sort((b, a) => a.name!.compareTo(b.name!),);     
}