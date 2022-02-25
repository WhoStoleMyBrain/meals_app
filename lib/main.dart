import 'package:flutter/material.dart';
import './category_meals_screen.dart';
import './categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
          // primarySwatch: Colors.pink,
          // accentColor: Colors.amber,
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          // bodyMedium: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          // bodySmall: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          titleLarge: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed', fontWeight: FontWeight.bold),
          // titleMedium: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
          // titleSmall: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
        ),
          colorScheme: ColorScheme(
              primary: Colors.pink,
              secondary: Colors.amber,
              onError: Colors.black,
              error: Colors.red,
              onBackground: Colors.black,
              onSecondary: Colors.black,
              onSurface: Colors.black,
              surface: Color.fromRGBO(220, 220, 220, 0),
              brightness: Brightness.light,
              background: Colors.white,
              onPrimary: Colors.white)),
      home: CategoriesScreen(),
      // initialRoute: '/',
      routes: {
        // '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
