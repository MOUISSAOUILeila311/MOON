import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_core/firebase_core.dart';
import 'home_screen.dart';
import 'WelcomeScreen.dart';
import 'Sign_up.dart';
import 'LoginScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => const WelcomeScreen(),
        'registration_screen': (context) => const RegistrationScreen(),
        'login_screen': (context) => const LoginScreen(),
        'home_screen': (context) => const homescreen(),


      },);
}


}

