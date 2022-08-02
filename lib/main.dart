import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'aftersplash.dart';

void main() {
  runApp(MaterialApp(
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue)));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/OIP1.jpg'),
      title: const Text(
        'Gitana Goodwin\n\n\n\nRU Family Weekend\n\n\n\nApril 1, 2022',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Color(0xffF2E9D8)),
      ),
      backgroundColor: const Color(0xff4C6173), //ANY COLOR YOU CHOOSE
      showLoader: true,
      loaderColor: const Color(0xffF2E9D8), //ANY COLOR YOU CHOOSE
      loadingText: const Text('Starting RUFW'),
      navigator: const AfterSplash(),
      durationInSeconds: 5,
    );
  }
}
