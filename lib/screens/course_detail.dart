import 'package:education_mobile_app/widgets/app_button.dart';
import 'package:education_mobile_app/widgets/fade_end_listview.dart';
import 'package:flutter/material.dart';

import '../widgets/chip_view.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Details'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.favorite),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 230,
                      width: MediaQuery.of(context).size.width,
                      child: Card(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Step design print for beginner",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    const ChipView(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "In this course I'll show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.",
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Row(
                            children: [
                              CircleAvatar(),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Text('Kinjal solanki'),
                                  Text('Kinjal solanki'),
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Column(
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.access_alarm),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('5h 21m'),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5),
                                    child: Align(
                                      alignment: Alignment.center,
                                      // Aligns text vertically centered
                                      child: Text(
                                        "Free-a-book",
                                        style: TextStyle(
                                            color: Colors.brown, fontSize: 10),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    _getVideoList(context),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
            const FadeEndListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: AppButton(
                buttonText: "Follow class",
                icon: null,
                callback: () {},
                backgroundColor: Color(0xFFEC5F5F),
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getVideoList(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 10),
                height: 85,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 8),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(1, 1),
                              colors: <Color>[
                                Color(0xFFEC5F5F),
                                Color(0xffffffff),
                              ],
                              tileMode: TileMode.mirror,
                            ),
                          )),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('How to get feedback on their products in just 5 days' , overflow: TextOverflow.clip, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                              Text('04:10 m', style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ),
                      )
                    ],
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
