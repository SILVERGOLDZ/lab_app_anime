import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart'; // otomatis dibuat sama flutterfire configure
import 'pages/splash/splash_screen.dart';

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
      title: 'DompetKU',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 196, 194, 200)),
        useMaterial3: true,
      ),
      // SplashScreen jadi halaman awal
      home: const SplashScreen(),
    );
  }
}
