import 'package:education_mobile_app/widgets/app_button.dart';
import 'package:education_mobile_app/widgets/time_grid_view.dart';
import 'package:flutter/material.dart';

class BottomSheetContainer extends StatefulWidget {
  const BottomSheetContainer({super.key});

  @override
  State<BottomSheetContainer> createState() => _BottomSheetContainerState();
}

class _BottomSheetContainerState extends State<BottomSheetContainer> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: DraggableScrollableSheet(
        initialChildSize: 0.9,
        maxChildSize: 1.0,
        minChildSize: 0.8,
        builder: (BuildContext context, ScrollController scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Upcoming course of the week',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  'Upcoming course of the week',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          CircleAvatar()
                        ],
                      ),
                      const TimeGridView(),
                      const SizedBox(height: 20),
                      const Text(
                        'Email',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        style: TextStyle(color: Color(0xFF9D9FA0)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black12,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Email',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Tel number',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        style: TextStyle(color: Color(0xFF9D9FA0)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black12,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Email',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Schedule date & time',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: 20,
                              child: CheckboxListTile(
                                value: true,
                                onChanged: (bool? val) {},
                                activeColor: Colors.red,
                              )),
                          SizedBox(width: 16),
                          Text(
                            '12 October at 9:45 PM',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                AppButton(
                    buttonText: 'Log in',
                    icon: null,
                    callback: () {},
                    backgroundColor: Color(0xFFEC5F5F),
                    textColor: Colors.white)
              ],
            ),
          );
        },
      ),
    );
  }
}
