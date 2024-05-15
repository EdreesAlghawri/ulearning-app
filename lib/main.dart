import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearing_app/app_blocs.dart';
import 'package:ulearing_app/app_states.dart';
import 'package:ulearing_app/pages/bloc_providers.dart';
import 'package:ulearing_app/pages/register/register.dart';
import 'package:ulearing_app/pages/sign_in/sign_in.dart';

import 'app_event.dart';
import 'pages/application/application_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDfi2Tpsut0QHdhf3vLSn8kGKwHtIkDJW8",
        appId: "1:517984228042:android:dff6eabfe742763dab1a33",
        messagingSenderId: "517984228042",
        projectId: "ulearning-app-a820e"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0.0,
              centerTitle: true,
            ),
            // colorScheme:
            //     ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            // useMaterial3: false,
          ),
          home: const ApplicationPage(),
          routes: {
            "signin": (context) => const SignIn(),
            "register": (context) => const Register(),
          },
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("'Flutter Demo Home Page'"),
      ),
      body: Center(
          child: BlocBuilder<AppBloc, AppStates>(
        builder: (context, state) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "${BlocProvider.of<AppBloc>(context).state.counter}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: "her1",
            onPressed: () =>
                BlocProvider.of<AppBloc>(context).add(Increment()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: "her2",
            onPressed: () =>
                BlocProvider.of<AppBloc>(context).add(Decrement()),
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
