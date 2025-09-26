import 'package:dompetku/screens/signin_screen.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart'; // otomatis dibuat sama flutterfire configure

Future<void> main() async {
  // Pastikan binding Flutter ready
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi Firebase
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ANIME APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
      ),
      home: const SignInScreen(),
    );
  }
}
