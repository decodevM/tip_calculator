import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tip Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        cardTheme: const CardTheme(
          shadowColor: Colors.black,
          color: Colors.white,
          elevation: 6,
          surfaceTintColor: Colors.white,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: Colors.deepPurple),
          contentPadding: EdgeInsets.all(15),
          isDense: false,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: Colors.deepPurple,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: Colors.deepPurple,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: Colors.deepPurple,
              width: 1,
            ),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
