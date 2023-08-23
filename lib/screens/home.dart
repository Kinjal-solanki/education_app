import 'package:education_mobile_app/screens/explore_courses.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/carousel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.cyan,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Positioned(
                        top: 60,
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              color: Colors.orange,
                              margin: EdgeInsets.only(left: 16),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text("data"), Text("data")],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                expandedHeight: 60,
                floating: true,
                pinned: false,
                snap: false,
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    ExploreCourses(),
                    Container(child: Icon(Icons.directions_transit)),
                    Container(child: Icon(Icons.directions_bike)),
                  ],
                ),
              ),
              ],
            ),
          ),
      );
  }

  Widget menu() {
    return Container(
      color: Color(0xFF3F5AA6),
      child: SafeArea(
        child: TabBar(
          dividerColor: Colors.transparent,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicatorColor: Colors.blue,
          tabs: [
            Tab(
              icon: Icon(Icons.euro_symbol),
            ),
            Tab(
              icon: Icon(Icons.assignment),
            ),
            Tab(
              icon: Icon(Icons.account_balance_wallet),
            ),
          ],
        ),
      ),
    );
  }
}