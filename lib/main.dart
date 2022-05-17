import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thppy_administration/screens/auth_state_screen.dart';
import 'package:thppy_administration/screens/centers_screen.dart';
import 'package:thppy_administration/screens/countries_screen.dart';
import 'package:thppy_administration/screens/forgot_password_screen.dart';
import 'package:thppy_administration/screens/home_screen.dart';
import 'package:thppy_administration/screens/login_screen.dart';
import 'package:thppy_administration/screens/users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'THPPY Administration',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => AnimatedSplashScreen(
              splash: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              nextScreen: const AuthStateScreen(),
              splashIconSize: 300,
            ),
        '/auth': (context) => const AuthStateScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
        '/countries': (context) => const CountriesScreen(),
        '/users': (context) => const UsersScreen(),
        '/centers': (context) => const CentersScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
