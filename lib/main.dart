import 'package:fae/screens/Home.dart';
import 'package:fae/screens/login_screen.dart';
import 'package:fae/screens/profile_page.dart';
import 'package:fae/screens/ranking_page.dart';
import 'package:fae/screens/splash_screen.dart';
import 'package:fae/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'screens/quiz.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => Home(),
        '/ranking': (context) => RankingPage(),
        '/profile': (context) => ProfilePage(),
        '/splash': (context) => SplashPage(),
        '/login': (context) => LoginScreen(),
        '/quiz': (context) => QuizPage(),
        '/welcome': (context) => WelcomeScreen(),
      },
    );
  }
}
