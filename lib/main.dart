import 'package:flutter/material.dart';
import 'package:flutter_hero_practise/people_list_screen.dart';
import 'package:flutter_hero_practise/person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Celebrity Profile App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: const PeopleListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final List<Person> people = [
  Person(
      id: '1',
      name: 'Lebron James',
      imageUrl: 'assets/images/lebron.jpg',
      birthInfo:
          'LeBron James is a legendary NBA superstar known for his unmatched versatility, basketball IQ, and impact both on and off the court.',
      profession: 'BasketBall'),
  Person(
      id: '2',
      name: 'Morgan Freeman',
      imageUrl: 'assets/images/freeman3.jpg',
      birthInfo:
          'Morgan Freeman is an iconic actor known for his deep, commanding voice and powerful performances across decades of film and television.',
      profession: 'Actor'),
  Person(
      id: '3',
      name: 'Patrick Stewart',
      imageUrl: 'assets/images/patrick2.jpg',
      birthInfo:
          'Patrick Stewart is a legendary British actor best known for his commanding roles as Captain Jean-Luc Picard and Professor X, bringing gravitas and charm to every performance.',
      profession: 'Actor'),
  Person(
      id: '4',
      name: 'Micheal Jordan',
      imageUrl: 'assets/images/jordan.jpg',
      birthInfo:
          'Michael Jordan is a basketball legend whose dominance, competitive spirit, and six NBA championships made him the greatest of all time.',
      profession: 'BasketBall'),
];
