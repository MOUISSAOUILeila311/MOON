
import 'Button_rounded.dart';
import 'package:flutter/material.dart' ;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Container(
        height: MediaQuery.of(context).size.height,
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/welcome.png"),
    )
    ),
        child : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RoundedButton(
                  colour: Colors.blueGrey,
                  title: 'Log In',
                  onPressed: () {
                    Navigator.pushNamed(context, 'login_screen');
                  },
                ),
                RoundedButton(
                    colour: Colors.grey ,
                    title: 'Register',
                    onPressed: () {
                      Navigator.pushNamed(context, 'registration_screen');
                    }),
          Column(
              children: const <Widget>[
                SizedBox(
                  height: 50.00,
                ),
                Text(
                  "MOON",
                  style : TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 40.00,
                      color: Colors.white
                  ),
                ),
                SizedBox(
                  height: 565.00,
                ),
                Text("Already have an account? Sign In ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13.00,
                      color: Colors.white
                  ),)
              ]),
        ]
  
        )
        )
        )
    )
    );
  }
}
