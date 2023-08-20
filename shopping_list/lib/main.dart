import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list/firebase_options.dart';
import 'app/Views/Intro/intro_view.dart';
import 'app/core/bloc/cartListBloc/bloc/cart_list_bloc_bloc.dart';
import 'app/core/bloc/shoppingListBloc/shopping_list_bloc.dart';
import 'app/utils/constants/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiProvider(
      providers: [
        BlocProvider<ShoppingListBloc>(
          create: (context) => ShoppingListBloc()..add(LoadShoppingList()),
        ),
        BlocProvider<CartListBloc>(
          create: (context) => CartListBloc(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: AnimatedSplashScreen(
        duration: 4000,
        splash: Image.asset('assets/imgs/textLogo.png'),
        splashIconSize: 100.0,
        nextScreen:
            const IntroView(), // Ensure that IntroView is the actual widget that needs access to the bloc
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        backgroundColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
