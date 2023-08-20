import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/widget/button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WColors.backG,
      body: SafeArea(
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "All you need !",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: WColors.orange),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Text(
                            "Make your shopping experience more better today.",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: WColors.orange,
                            ),
                          ),
                        )
                      ],
                    ),
                    const Button(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
