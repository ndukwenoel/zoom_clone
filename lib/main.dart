import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/resouces/auth_methods.dart';
import 'package:zoom_clone/screens/homeScreen.dart';
import 'package:zoom_clone/screens/loginScreen.dart';
import 'package:zoom_clone/utilities/colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backGroundColor,
      ),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home':(context) => const HomeScreen(),

      },
      home:  StreamBuilder(
        stream: AuthMethods().authChanges,
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
           return const Center(
             child: CircularProgressIndicator(),
           );
          }
          if (snapshot.hasData){
            return const HomeScreen();
          }

          return const LoginScreen();
        },
      ),
    );
  }
}
