import 'package:education_mobile_app/widgets/carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreCourses extends StatelessWidget {
  const ExploreCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0), // Adjust spacing between items
                    child: Container(
                      height: 75,
                      width: 74,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 3),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(24.0)
                          ),
                      ),
                      child: Card(
                        child: Image(image: AssetImage('assets/LogoMark.png')),
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Carousel(height: 360)
      ],
    );
  }
}
