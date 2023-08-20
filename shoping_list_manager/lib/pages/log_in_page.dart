import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:shoping_list_manager/widgets/my_button.dart';
import 'package:shoping_list_manager/widgets/my_txt_field.dart';
import 'package:shoping_list_manager/widgets/squre_tile.dart';
import 'package:shoping_list_manager/pages/home_page.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
  //text editin controlors
  final emailController = TextEditingController();
  final PasswordController = TextEditingController();
  // sing user in method
 void signUserIn() async{
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text, 
  password: PasswordController.text
);
  
 }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
             const SizedBox(
                height: 50,
              ),
              Text(
                'Welecome To our App',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              MyTxtField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTxtField(
                controller: PasswordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Passoword?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
               const SizedBox(height: 25,),
               MyButton(
                onTap: signUserIn,
               ),
               SizedBox(height: 50,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:25.0),
                 child: Row(
                   children: [
                     Expanded(
                       child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
                       child: Text('Or continue With',
                       style: TextStyle(color: Colors.grey[700]),),
                       
                     ),
                      Expanded(
                       child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],))
               
                   ],
                 ),
               ),
               const SizedBox(height: 50,),
               const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(ImagePath: 'assets/images/google.png'),
                   SizedBox(width: 15,),
                  SquareTile(ImagePath: 'assets/images/apple.png' ),
                ],
               ),             
               const SizedBox(height: 50,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member yet ?',
                  style: TextStyle(color: Colors.grey[700]),),
                   SizedBox(width: 40,),
                   
                  Text('Register now',
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),

                ],
               )
                  
                  ],
                  
          ),
        ),
      ),
    );
  }
}
