import 'package:education_mobile_app/screens/course_detail.dart';
import 'package:education_mobile_app/widgets/carousel.dart';
import 'package:education_mobile_app/widgets/chip_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreCourses extends StatelessWidget {
  const ExploreCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getLiveStories(context),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text('Upcoming course of the week', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          ChipView(),
          Carousel(height: 360, callback: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CourseDetail()));
          },),
        ],
      ),
    );
  }

  Widget _getLiveStories(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0), // Adjust spacing between items
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
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Image(image: AssetImage('assets/LogoMark.png')),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}