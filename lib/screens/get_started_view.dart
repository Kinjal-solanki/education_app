import 'package:education_mobile_app/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                height: 200,
                width: 200,
                child: Image(image: AssetImage('assets/Logo.png')),
              ),
            ),
            SizedBox(height: 80,),
            Text('Welcome to Ajheryuk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),),
            Text('Best and popular apps for live education course from home',
                textAlign: TextAlign.center, style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  color: Color(0xFF8C8C8C),
                )),
            SizedBox(height: 44,),
            AppButton(
              buttonText: "Get Started",
              icon: null,
              callback: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Login()));
              },
              backgroundColor: Color(0xFFEC5F5F),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
