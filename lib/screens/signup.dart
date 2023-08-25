import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/app_button.dart';
import 'home.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = const TextStyle(color: Colors.grey, fontSize: 14.0);
    TextStyle linkStyle = const TextStyle(color: Colors.blue);

    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image(image: AssetImage('assets/LogoMark.png')),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextField(
                style: TextStyle(color: Color(0xFF9D9FA0)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF6F7FA),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  labelText: 'Fullname',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: TextField(
                style: TextStyle(color: Color(0xFF9D9FA0)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF6F7FA),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  labelText: 'Email',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 10),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Color(0xFF9D9FA0)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF6F7FA),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            AppButton(
              buttonText: "Sign Up",
              icon: null,
              callback: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Home()));
              },
              backgroundColor: Color(0xFFEC5F5F),
              textColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Stack(
                children: <Widget>[
                  Divider(),
                  Center(
                    child: Container(
                      width: 50,
                      height: 20,
                      color: Color(0xFFFEFBFF),
                      child: Text(
                        'or',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            AppButton(
              buttonText: "Log in with Facebook",
              icon: "assets/facebook.png",
              callback: () {},
              backgroundColor: Color(0xFF0082CD),
              textColor: Colors.white,
            ),
            AppButton(
              buttonText: "Log in with Google",
              icon: "assets/google.png",
              callback: () {},
              backgroundColor: Color(0xFFF6F7FA),
              textColor: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: defaultStyle,
                  children: <TextSpan>[
                    TextSpan(text: 'By signing up you accept the '),
                    TextSpan(
                        text: 'Terms of Service',
                        style: linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Terms of Service"');
                          }),
                    TextSpan(text: ' and '),
                    TextSpan(
                        text: 'Privacy Policy',
                        style: linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Privacy Policy"');
                          }),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
