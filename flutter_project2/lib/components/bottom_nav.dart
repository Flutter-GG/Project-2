// ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:flutter_blog_project2/constants/colors.dart';
// import 'package:flutter_blog_project2/screens/add_post.dart';
// import 'package:flutter_blog_project2/screens/home_screen.dart';
// import 'package:flutter_blog_project2/screens/profile_screen.dart';
// import 'package:flutter_blog_project2/screens/reading_list.dart';

// class BottomNavBar extends StatefulWidget {
//   BottomNavBar({super.key, required this.index});
//   int index;
//   final screens = [
//     const HomeScreen(),
//     const AddPostScreen(),
//     const ReadingList(),
//     ProfileScreen()
//   ];
//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//         showUnselectedLabels: true,
//         unselectedItemColor: AppColors.primary,
//         currentIndex: widget.index,
//         onTap: (value) {
//           setState(() {
//             widget.index = value;
//           });
//           Navigator.pushAndRemoveUntil(
//               context,
//               MaterialPageRoute(
//                   builder: ((context) => widget.screens[widget.index])),
//               (route) => false);
//         },
//         selectedItemColor: AppColors.secondry,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.post_add), label: 'Add post'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.list_alt), label: 'Reading List'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My posts'),
//         ]);
//   }
// }
