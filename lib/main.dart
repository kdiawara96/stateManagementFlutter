import 'package:flutter/material.dart';
import 'package:new_bloc/ui/pages/Counter.page.dart';
import 'package:new_bloc/ui/pages/HomePage.dart';
import 'package:new_bloc/ui/pages/ProfilePage.dart';
import 'package:new_bloc/ui/pages/SettingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const RootView();
  }
}

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/counter': (context) => CounterPage(),
        '/profil': (context) => const ProfilePage(),
        '/setting': (context) => const SettingsPage(),
      },
      initialRoute: "/",
    );
  }
}
