import 'package:flutter/material.dart';
import 'package:ghars/widgets/user_page_widgets/circular_icon_widget.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 25),
          margin: const EdgeInsets.only(bottom: 15),
          // color: Colors.amber,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.12,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //user name will be here
              Text(
                "User name",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "email@gmail.com",
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularIcon(
              icon: Icons.fire_truck_outlined,
              title: "Orders",
            ),
            CircularIcon(
              icon: Icons.wallet,
              title: "Orders",
            ),
            CircularIcon(
              icon: Icons.wifi_protected_setup,
              title: "Orders",
            ),
          ],
        ),
      ],
    );
  }
}
