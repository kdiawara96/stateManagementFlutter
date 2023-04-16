import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_bloc/stateManagement/Provider/Counter.provider.dart';
import 'package:new_bloc/stateManagement/bloc/Counter/counter.bloc.dart';
import 'package:new_bloc/stateManagement/bloc/Counter/counter.cubit.dart';
import 'package:new_bloc/ui/pages/CounterPage/Counter.bloc.page.dart';
import 'package:new_bloc/ui/pages/CounterPage/Counter.cubit.page.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        )
      ],
      child: const RootView(),
    );
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

// -----------------------------CUBIT MAIN----------------------------------

class BlocCubit extends StatelessWidget {
  const BlocCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(0),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => HomeCubit(),
        },
      ),
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
          create: (context) => CounterProviderState(),
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
