import 'package:flutter/material.dart';
import 'package:flutterfirebase/models/UserModel.dart';
import 'package:flutterfirebase/screens/authentication/authenticate.dart';
import 'package:flutterfirebase/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //the user data that the provider proides this can be a user data or can be null.
    final user = Provider.of<UserModel?>(context);

    if (user == null) {
      return const Authenticate();
    } else {
      return const Home();
    }
  }
}
