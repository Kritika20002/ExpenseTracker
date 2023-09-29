import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColourScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 91, 59, 181));
var kDarkColourScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 91, 59, 181),
    brightness: Brightness.dark);

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((fun){
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Expenses(),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData.dark().copyWith(
            primaryColor: kColourScheme.primary,
            useMaterial3: true,
            colorScheme: kDarkColourScheme
            ,
            cardTheme: const CardTheme().copyWith(
                color: kDarkColourScheme.secondaryContainer,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kDarkColourScheme.primaryContainer,
                    foregroundColor: kDarkColourScheme.onPrimaryContainer))),

        theme: ThemeData().copyWith(
            useMaterial3: true,
            colorScheme: kColourScheme,
            primaryColor: kColourScheme.primary,
            //scaffoldBackgroundColor: Colors.deepPurpleAccent,
            appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: kColourScheme.onPrimaryContainer,
                foregroundColor: kColourScheme.primaryContainer),
            cardTheme: const CardTheme().copyWith(
                color: kColourScheme.secondaryContainer,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kColourScheme.primaryContainer)),
            textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: kColourScheme.onSecondaryContainer))),
      ),
    );
  //});

}
