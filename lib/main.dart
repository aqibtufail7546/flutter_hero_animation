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
      croppedImageUrl: 'assets/images/lebron_crop.jpg',
      birthInfo:
          'LeBron James is a legendary NBA superstar known for his unmatched versatility, basketball IQ, and impact both on and off the court.',
      profession: 'BasketBall'),
  Person(
      id: '2',
      name: 'Morgan Freeman',
      imageUrl: 'assets/images/freeman.jpg',
      croppedImageUrl: 'assets/images/freeman_crop.jpg',
      birthInfo:
          'Morgan Freeman is an iconic actor known for his deep, commanding voice and powerful performances across decades of film and television.',
      profession: 'Actor'),
  Person(
      id: '3',
      name: 'Patrick Stewart',
      imageUrl: 'assets/images/patrick.jpg',
      croppedImageUrl: 'assets/images/patrick_crop.jpg',
      birthInfo:
          'Patrick Stewart is a legendary British actor best known for his commanding roles as Captain Jean-Luc Picard and Professor X, bringing gravitas and charm to every performance.',
      profession: 'Actor'),
  Person(
      id: '4',
      name: 'Micheal Jordan',
      imageUrl: 'assets/images/micheal.jpg',
      croppedImageUrl: 'assets/images/micheal_crop.jpg',
      birthInfo:
          'Michael Jordan is a basketball legend whose dominance, competitive spirit, and six NBA championships made him the greatest of all time.',
      profession: 'BasketBall'),
  Person(
      id: '5',
      name: 'Usain Bolt',
      imageUrl: 'assets/images/usain.jpg',
      croppedImageUrl: 'assets/images/usain_crop.jpg',
      birthInfo:
          'Usain Bolt is a world-renowned sprinter famous for his lightning speed and record-breaking Olympic performances.',
      profession: 'Athelete'),
  Person(
      id: '6',
      name: 'Muhammad Ali',
      imageUrl: 'assets/images/ali.jpg',
      croppedImageUrl: 'assets/images/ali_crop.jpg',
      birthInfo:
          'Muhammad Ali was a legendary boxer and charismatic activist, celebrated for his unmatched skill, bold personality, and impact far beyond the ring.',
      profession: 'Boxer'),
];
