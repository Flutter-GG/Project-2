import 'package:flutter/material.dart';
import 'package:ghars/functions/quantity_func.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({super.key});

  // Wrapper Widget
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showAlert(context));
    return const SizedBox();
  }

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        content: SizedBox(
          height: 130,
          child: Center(
            child: Text(
              "🌿✧˖°\nCongrats You got a Discount, Your total now is ${overallTotalPrice() - 560}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
