import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearing_app/common/widgets/flutter_toast.dart';
import 'package:ulearing_app/pages/sign_in/bloc/sign_in_blocs.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

  Future<void> handlesSginIn(String type) async {
    try {
      if (type == "email") {
        //BlocProvider.of<SignInBloc>(context).state;
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {
          //
          toastInfo(msg: "You need to fill your email address");
          return;
        }
        if (password.isEmpty) {
          toastInfo(msg: "You need to fill your password");
          return;
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddress, password: password);
          if (credential.user == null) {
            //
            toastInfo(msg: "You don't exits");
            return;
          }
          if (!credential.user!.emailVerified) {
            //
            toastInfo(msg: "You need to Verified your email address");
            return;
          }
          var user = credential.user;
          if (user != null) {
            print("user exist");
            // we got Verified user from firebase
          } else {
            toastInfo(
                msg: "Currently you are not a user of this app");
            return;
            // we have error getting user from firebase
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'invalid-email') {
            toastInfo(msg: "your email format is wrong ");
          } else if (e.code == 'user-not-found') {
            toastInfo(msg: "No user found for that email.");
          } else if (e.code == 'wrong-password') {
            toastInfo(msg: "Wrong password provided for that user.");
          }
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
