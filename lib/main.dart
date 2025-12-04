import 'package:anime_verse/screens/detail_screen.dart';
import 'package:anime_verse/screens/favorite_screen.dart';
import 'package:anime_verse/screens/home_screen.dart';
import 'package:anime_verse/screens/profile_screen.dart';
import 'package:anime_verse/screens/signin_screen.dart';
import 'package:flutter/material.dart';

import 'config/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AnimeVerse',
      theme: ThemeData(
        fontFamily: 'Urbanist',
      ),
      routerConfig: createRouter(),
      debugShowCheckedModeBanner: false,
    );
  }
}