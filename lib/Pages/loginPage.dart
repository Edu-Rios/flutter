import 'package:flutter/material.dart';
import 'package:trabflutter/Common/MyRouters.dart';
import 'package:trabflutter/Pages/homeEdu.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<StatefulWidget> createState() => LoginpageState();
}

class LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          child: Text('Login'),
          onPressed:
              () => {
                Navigator.pushNamed(
                  context,
                  ROUTE_HOME,
                  arguments: "hOME",
                  //MaterialPageRoute(builder: (context) => HomeEdu(title: "")),
                ),
              },
        ),
      ),
    );
  }
}
