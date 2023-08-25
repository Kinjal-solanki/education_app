import 'package:flutter/material.dart';

class ChipView extends StatelessWidget {
  const ChipView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 16.0),
              child: Chip(
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                color: MaterialStateProperty.all(Colors.lightBlue),
                label: Text("text"),
              ),
            );
          }),
    );
  }
}
