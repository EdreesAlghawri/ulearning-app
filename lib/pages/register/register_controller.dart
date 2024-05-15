import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearing_app/common/widgets/flutter_toast.dart';
import 'package:ulearing_app/pages/register/blocs/register_blocs.dart';

class RegisterController {
  final BuildContext context;

  const RegisterController({required this.context});

  Future<void> handlesEmailRegister() async {
    final state = context.read<RegisterBloc>().state;
    String userName = state.userName;
    String emailAddress = state.email;
    String password = state.password;
    String rePassword = state.rePassword;
    if (userName.isEmpty) {
      toastInfo(msg: "Please enter your username");
      return;
    }
    if (emailAddress.isEmpty) {
      toastInfo(msg: "Please enter your email address");
      return;
    }
    if (password.isEmpty) {
      toastInfo(msg: "Please enter your password");
      return;
    }
    if (rePassword.isEmpty) {
      toastInfo(msg: "Please enter your password");
      return;
    }
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailAddress, password: password);
      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);
        toastInfo(
          msg:
              "An email has been sent to your registered email. To activate it pleases check your email box and click on the link",
        );
        Navigator.of(context).pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo(msg: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        toastInfo(msg: "The account already exists for that email.");
      } else if (e.code == 'invalid-email') {
        toastInfo(msg: "Your email address is not valid");
      }
    }
  }
}
