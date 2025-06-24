import 'package:flutter/material.dart';
import 'package:phone_store/Screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // هذا الملف تم إنشاؤه بواسطة flutterfire configure

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // تأكد من تهيئة Flutter Binding
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp()); // استبدل MyApp() بتطبيقك الرئيسي
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
