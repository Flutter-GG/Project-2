// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shopping_list_app/main.dart';
// import 'package:shopping_list_app/model/items_data.dart';
// import 'package:shopping_list_app/utils/colors_app.dart';
// import 'package:shopping_list_app/utils/page_size.dart';
// import 'package:shopping_list_app/widgets/addItems_textField_widget.dart';
// import 'package:shopping_list_app/widgets/appBar_widget.dart';
// import 'package:shopping_list_app/widgets/button_widget.dart';
// import 'dart:io';

// import 'package:shopping_list_app/widgets/text_widget.dart';

// class AddItemsPage extends StatefulWidget {
//   AddItemsPage({super.key, this.listItems, required this.myFunction});
//   final ItemsData? listItems;
//   final Function() myFunction;
//   @override
//   State<AddItemsPage> createState() => _AddItemsPageState();
// }

// // EditItemsPage
// class _AddItemsPageState extends State<AddItemsPage> {
//   TextEditingController? nameController = TextEditingController();
//   TextEditingController? descriptionController = TextEditingController();
//   TextEditingController? quantityController = TextEditingController();
//   TextEditingController? priceController = TextEditingController();

//   File? _imag;
//   String? imagePath;

//   void initState() {
//     super.initState();
//     if (widget.listItems != null) {
//       nameController = TextEditingController(text: widget.listItems!.name);
//       descriptionController =
//           TextEditingController(text: widget.listItems!.description);
//     }
//   }

//   getImag() async {
//     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (image != null) {
//       final imageTemporary = File(image.path);
//       saveData(image.path.toString());
//       setState(() {
//         this._imag = imageTemporary;
//       });
//     }
//   }

//   saveData(String value) async {
//     final SharedPre = await SharedPreferences.getInstance();
//     SharedPre.setString('path', value);
//     getData();
//   }

//   getData() async {
//     final SharedPre = await SharedPreferences.getInstance();
//     setState(() {
//       imagePath = SharedPre.getString('path');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBarWidget(
//         backgroundColor: ColorsApp.primeryColor,
//       ),
//       body: SingleChildScrollView(
//           child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             PageSize.spaceH16,
//             AddItemsTextFieldWidget(
//                 controller: nameController, hintText: 'Name ..'),
//             PageSize.spaceH16,
//             _imag != null
//                 ? Image.file(
//                     _imag!,
//                     width: 150,
//                     height: 150,
//                   )
//                 : Image.network(
//                     "https://cdn-icons-png.flaticon.com/256/1829/1829589.png",
//                     width: 150,
//                     height: 150,
//                   ),
//             PageSize.spaceH16,
//             TextButton(
//                 onPressed: () => getImag(),
//                 child: const TextWidget(
//                     text: 'Upload image', textColor: ColorsApp.primeryColor)),
//             PageSize.spaceH16,
//             AddItemsTextFieldWidget(
//                 controller: descriptionController,
//                 maxLines: 4,
//                 hintText: 'description ..'),
//             PageSize.spaceH16,
//             AddItemsTextFieldWidget(
//                 controller: quantityController, hintText: 'quantity ..'),
//             PageSize.spaceH16,
//             AddItemsTextFieldWidget(
//                 controller: priceController, hintText: 'price ..'),
//             PageSize.spaceH16,
//             ButtonsWidget(
//               text: "aad",
//               onPressed: () {
//                 print(nameController?.text);
//                 print(descriptionController?.text);
//                 print(imagePath);
//                 print(priceController?.text);
//                 final ob = ItemsData(
//                   userID: 1000,
//                   name: nameController!.text,
//                   description: descriptionController!.text,
//                   quantity: int.tryParse(quantityController!.text) ?? 0,
//                   price: int.tryParse(priceController!.text) ?? 0,
//                   checked: false,
//                   imageItem: imagePath,
//                   categories: ["c1"],
//                 );

//                 listItems.add(ob);
//                 widget.myFunction();
//                 Navigator.pop(context, "back");
//               },
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }

//     ButtonsWidget(
//               text: "aad",
//               onPressed: () {
//                 print(nameController?.text);
//                 print(descriptionController?.text);
//                 print(imagePath);
//                 print(priceController?.text);
//                 final ob = ItemsData(
//                   userID: 1000,
//                   name: nameController!.text,
//                   description: descriptionController!.text,
//                   quantity: int.tryParse(quantityController!.text) ?? 0,
//                   price: int.tryParse(priceController!.text) ?? 0,
//                   checked: false,
//                   imageItem: imagePath,
//                   categories: ["c1"],
//                 );

//                 listItems.add(ob);
//                 widget.myFunction();
//                 Navigator.pop(context, "back");
//               },
//             )