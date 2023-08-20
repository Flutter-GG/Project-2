import 'package:ghars/data_to_be_accessed.dart';
import 'package:ghars/widgets/home_page_widgets/search_filed.dart';

List displayedList() {
  if (searchFiledController.text.toLowerCase().isNotEmpty) {
    //Check if search field is not empty
    //Disable filtring
    isIndoor = false;
    isOutdoor = false;
    searchResult
        .clear(); //Clear the list of search result for each search process
    for (var element in listOfPlants) {
      //Check if its exist in plants list
      //Check if searched plant name match with any name in plants list
      if (element.name
          .toString()
          .toLowerCase()
          .contains(searchFiledController.text.toLowerCase())) {
        //Check its not exist in search list
        if (!searchResult.contains(element)) {
          searchResult.add(element); // then add it
        }
      }
    }
    return searchResult; //Return the list of the search result
  }
  else if (isIndoor && isOutdoor == false) { //For indoor filtering 
    return indoorPlants;
  } else if (isOutdoor && isIndoor == false) { //Outdoor filter
    return outdoorPlants;
  }
  else {
    return listOfPlants;
  }
}
