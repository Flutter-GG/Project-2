import 'package:flutter/material.dart';
import 'package:flutter_project2/components/appbar_widget.dart';
import 'package:flutter_project2/components/list_item.dart';
import 'package:flutter_project2/constants/colors.dart';
import 'package:flutter_project2/main.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidgetWicon(
          'Shopping List', const Icon(Icons.filter_list), () {}),
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: oneUserList.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: ListItem(item: oneUserList[index]),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
