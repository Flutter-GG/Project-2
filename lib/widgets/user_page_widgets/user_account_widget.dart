import 'package:flutter/material.dart';
import 'package:ghars/data_to_be_accessed.dart';
import 'package:ghars/screens/wlcome_screen.dart';
import 'package:ghars/utils/extintions.dart';
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
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width - 80),
                child: IconButton(
                  icon: const Icon(
                    Icons.logout,
                    size: 30,
                  ),
                  onPressed: () {
                    context.push(screen: const WelcomeScareen());
                  },
                ),
              ),
              //user name will be here
              Text(
                userNmae!,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                userEmailText!,
                style: const TextStyle(
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
              title: "Wallet",
            ),
            CircularIcon(
              icon: Icons.wifi_protected_setup,
              title: "Returend",
            ),
          ],
        ),
      ],
    );
  }
}
