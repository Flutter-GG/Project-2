import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_list_manager/model/product_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shoping_list_manager/pages/intro_page.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => ProductModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      )
      );
    
      
  }
}
