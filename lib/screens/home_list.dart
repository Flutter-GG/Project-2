import 'package:flutter/material.dart';
import 'package:project_2/card.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/extinsions.dart';
import 'package:project_2/main.dart';
import 'package:project_2/screens/add.dart';
import 'package:project_2/screens/sign_up.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Home extends StatefulWidget {

  Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WColors.backG,
      appBar: AppBar(
        backgroundColor: WColors.darkRed,
        elevation: 0,
        title: Text("Shoop"),
        leading: IconButton(
          icon: const Icon(Icons.logout),
          tooltip: 'Log Out',
          onPressed: () {
            context.pushPage(screen: const Sign());
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: "btnAdd",
        backgroundColor: WColors.orange,
        child: Icon(Icons.add_circle),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => _editAction())),
      ),
      body: LiquidPullToRefresh(
        color: WColors.orange,
        animSpeedFactor: 10,
        showChildOpacityTransition: false,
        springAnimationDurationInMilliseconds: 500,
        onRefresh: () {
          return Future.delayed(const Duration(milliseconds: 500), () {
            setState(() {});
          });
        },
        child: Column(
          children: [
            SizedBox(
              height: context.getheight() / 1.26,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                      child: SizedBox(
                          height: 250,
                          child: CardWidget(
                            product: productslist[index],
                          )),
                      onLongPress: () {
                        productslist.removeAt(index);
                        setState(() {});
                      });
                },
                itemCount: productslist.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _editAction() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => AddScreen()))
          .then((value) {
        if (value == "back") setState(() {});
      });
    });
  }
}
