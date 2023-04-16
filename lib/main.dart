import 'package:flutter/material.dart';
import 'package:new_bloc/stateManagement/Provider/Counter.provider.dart';
import 'package:new_bloc/ui/pages/CounterPage/Counter.bloc.page.dart';
import 'package:new_bloc/ui/pages/CounterPage/Counter.provider.page.dart';
import 'package:new_bloc/ui/pages/HomePage.dart';
import 'package:new_bloc/ui/pages/ProfilePage.dart';
import 'package:new_bloc/ui/pages/SettingsPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

// -----------------------------MYAPP PRINCIPAL--------------------------------
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

// -------------------------MyApp de Provider --------------------------------
class ProviderNotified extends StatelessWidget {
  const ProviderNotified({super.key});

  @override
  Widget build(BuildContext context) {
    // ---------------------NOTIFIERPROVIDER------------------------------

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterState(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => HomeProvider(),
        },
        title: 'Counter app',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
      ),
    );
  }
}
