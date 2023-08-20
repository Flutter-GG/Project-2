import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screens/products_screen.dart';
import 'package:flutter_shopping_app/screens/profile_screen.dart';
import 'package:flutter_shopping_app/screens/search_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navbar_router/navbar_router.dart';

/* the bottom navbar with a library to make it easier */
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  static List<NavbarItem> items = [
    NavbarItem(FontAwesomeIcons.house, 'Home', backgroundColor: colors[0]),
    NavbarItem(FontAwesomeIcons.searchengin, 'Search',
        backgroundColor: colors[1]),
    NavbarItem(FontAwesomeIcons.person, 'Profile', backgroundColor: colors[2]),
  ];

  final Map<int, Map<String, Widget>> _routes = const {
    0: {
      '/': ProductsScreen(),
    },
    1: {
      '/': SearchScreen(),
    },
    2: {
      '/': ProfileScreen(),
    },
  };

  @override
  Widget build(BuildContext context) {
    return NavbarRouter(
      type: NavbarType.notched,
      errorBuilder: (context) {
        return const Center(child: Text('Error 404'));
      },
      onBackButtonPressed: (isExiting) {
        return isExiting;
      },
      destinationAnimationCurve: Curves.fastOutSlowIn,
      destinationAnimationDuration: 600,
      decoration:
          NavbarDecoration(navbarType: BottomNavigationBarType.shifting),
      destinations: [
        for (int i = 0; i < items.length; i++)
          DestinationRouter(
            navbarItem: items[i],
            destinations: [
              for (int j = 0; j < _routes[i]!.keys.length; j++)
                Destination(
                  route: _routes[i]!.keys.elementAt(j),
                  widget: _routes[i]!.values.elementAt(j),
                ),
            ],
            initialRoute: _routes[i]!.keys.first,
          ),
      ],
    );
  }
}