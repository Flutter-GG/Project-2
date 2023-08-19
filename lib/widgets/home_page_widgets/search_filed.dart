import 'package:flutter/material.dart';


final TextEditingController searchFiledController = TextEditingController();

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 30,
      child: TextField(
        onSubmitted: (value) {
          searchFiledController.text = value;
          setState(() {});
        },
        controller: searchFiledController,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.network(
              "https://cdn-icons-png.flaticon.com/128/2812/2812120.png",
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.search),
              width: 30,
            ),
          ),
          hintText: "Search for a plant",
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
