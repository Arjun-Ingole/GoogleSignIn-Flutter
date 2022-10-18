import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:steam/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        color: Colors.white,
        height: size.height,
        width: size.width,
        child: Center(
          child: Container(
              margin: EdgeInsets.all(12),
              width: double.infinity,
              height: 72,
              child: ElevatedButton.icon(
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.googleLogin();
                },
                icon: FaIcon(FontAwesomeIcons.google),
                label: Text("Sign In with Google"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
              )),
        ));
  }
}
