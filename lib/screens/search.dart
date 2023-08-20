
import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/spaces.dart';
import 'package:project_2/widget/search_result.dart';

List searchList = [];
TextEditingController controllerItem = TextEditingController();
bool isFound = false;

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WColors.backG,
        
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Space.spaceH32,
            TextField(
              onSubmitted: (value) {
                controllerItem.text == value;
                isFound = true;
                setState(() {});
              },
              controller: controllerItem,
              decoration: InputDecoration(
                  hintText: "Item Name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide( width: 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(width: 3),
                  )),
            ),
            isFound
                ? Column(
                    children: result(),
                  )
                : const SizedBox.shrink()
          ],
        )));
  }
}
