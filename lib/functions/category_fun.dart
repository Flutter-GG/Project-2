import '../data_to_be_accessed.dart';

listOfCategory() {
  for (int i = 0; i < listOfPlants.length; i++) {
    if (listOfPlants[i].type == 'outdoor') {
      if (!outdoorPlants.contains(listOfPlants[i])) {
        outdoorPlants.add(listOfPlants[i]);
      }
    } else {
      if (!indoorPlants.contains(listOfPlants[i])) {
        indoorPlants.add(listOfPlants[i]);
      }
    }
  }
}
