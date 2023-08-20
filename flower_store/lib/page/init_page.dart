import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';
import 'package:turn_page_transition/turn_page_transition.dart';
import 'home_page.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            // store logo
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
                top: 60,
                bottom: 10,
              ),
              child: Image.asset('assets/image/flower-store.jpg'),
            ),

            const Padding(
              padding: EdgeInsets.all(28.0),
              // using flutter_gradient_animation_text
              child: GradientAnimationText(
                text: Text(
                  'Welcome to the flower world store :) ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                colors: [Colors.grey, Colors.black],
                duration: Duration(seconds: 2),
              ),
            ),
            const GradientAnimationText(
              text: Text(
                'Beautiful Flower Shop',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              colors: [Colors.grey, Colors.black],
              duration: Duration(seconds: 2),
            ),
            const SizedBox(height: 24),

            const Spacer(),

            GestureDetector(
              onTap: () => Navigator.push(
                context,
                TurnPageRoute(
                  overleafColor: Colors.grey,
                  animationTransitionPoint: 0.5,
                  transitionDuration: const Duration(seconds: 1),
                  reverseTransitionDuration: const Duration(seconds: 1),
                  builder: (context) => const HomePage(),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 112, 91, 222),
                ),
                child: const Text(
                  "Start shopping",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
