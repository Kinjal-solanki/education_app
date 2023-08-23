import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final String? icon;
  final VoidCallback callback;
  final Color backgroundColor;
  final Color textColor;

  const AppButton({super.key, required this.buttonText, required this.icon, required this.callback, required this.backgroundColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
      width: MediaQuery.of(context).size.width,
      child: icon != null ? ElevatedButton.icon(
          onPressed: callback,
          icon: Image(image: AssetImage(icon ?? ""),),  //icon data for elevated button
          label: Text(buttonText), //label text
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: backgroundColor),
                  )
              ),
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              foregroundColor: MaterialStateProperty.all(textColor)
          )
      ) : ElevatedButton(
          onPressed: callback,
          child: Text(buttonText), //label text
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Colors.transparent),
                  )
              ),
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              foregroundColor: MaterialStateProperty.all(textColor),
              elevation: MaterialStateProperty.all(1),
              shadowColor: MaterialStateProperty.all(Color(0xFFEC5F5F))
          )
      ),
    );
  }
}
