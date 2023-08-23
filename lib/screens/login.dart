import 'package:education_mobile_app/screens/signup.dart';
import 'package:education_mobile_app/widgets/app_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 16.0);
    TextStyle linkStyle = TextStyle(color: Colors.blue);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                    border: OutlineInputBorder(borderSide: BorderSide.none,),
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
                    border: OutlineInputBorder(borderSide: BorderSide.none,),
                    labelText: 'Password',
                  ),
                ),
              ),
              AppButton(
                buttonText: "Log in",
                icon: null,
                callback: (){},
                backgroundColor: Color(0xFFEC5F5F),
                textColor: Colors.white,),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Forgot Password?',
                style: TextStyle(
                  color: Color(0xFF0082CD),
                  fontSize: 16,
                  fontWeight: FontWeight.normal
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Stack(
                  children: <Widget> [
                    Divider(),
                    Center(
                      child: Container(
                        width: 50,
                        height: 20,
                        color: Color(0xFFFEFBFF),
                        child: Text('or', textAlign: TextAlign.center,),
                      ),
                    )
                  ],
                ),
              ),
              AppButton(
                buttonText: "Log in with Facebook",
                icon: "assets/facebook.png",
                callback: (){},
                backgroundColor: Color(0xFF0082CD),
                textColor: Colors.white,),
              AppButton(
                buttonText: "Log in with Google",
                icon: "assets/google.png",
                callback: (){},
                backgroundColor: Color(0xFFF6F7FA),
                textColor: Colors.black,),
              RichText(
                text: TextSpan(
                  style: defaultStyle,
                  children: <TextSpan>[
                    TextSpan(text: 'Don’t have an account? '),
                    TextSpan(
                        text: 'Sign Up',
                        style: linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignUp()));
                          }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
