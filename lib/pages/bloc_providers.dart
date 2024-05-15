import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearing_app/pages/register/blocs/register_blocs.dart';
import 'package:ulearing_app/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:ulearing_app/pages/welcome/blocs/welcome_blocs.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(lazy: false, create: (context) => WelcomeBloc()),
        // BlocProvider(lazy: false, create: (context) => AppBloc()),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => RegisterBloc()),
      ];
}
