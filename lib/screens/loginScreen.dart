import 'package:flutter/material.dart';
import 'package:zoom_clone/resouces/auth_methods.dart';
import 'package:zoom_clone/widgets/button.dart';

import '../utilities/asset_Images.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text(
              "Start or join a meeting",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 48.0),
              child: onboardingImage,
            ),
             CustomButton(text: "Sign in with Google", onPressed: ()async {
               bool result = await _authMethods.signInWithGoogle(context);
               if (result){
                 Navigator.pushNamed(context, '/home');
               }
             },),
          ],
        ),
      ),
    );
  }
}
