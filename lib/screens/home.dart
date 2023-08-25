import 'package:education_mobile_app/screens/explore_courses.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/carousel.dart';
import 'inbox.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                actions: const [
                  Padding(padding: EdgeInsets.only(right: 8, top: 16),
                  child: Icon(Icons.notification_add))
                ],
                automaticallyImplyLeading: false,
                flexibleSpace: _buildNavigationBar(),
                expandedHeight: 80,
                floating: true,
                pinned: false,
                snap: false,
              ),
              const SliverFillRemaining(
                child: TabBarView(
                  children: [
                    ExploreCourses(),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                    Inbox(),
                  ],
                ),
              ),
              ],
            ),
          ),
      );
  }

  Widget _buildNavigationBar() {
    return FlexibleSpaceBar(
      background: Stack(
        children: [
          Positioned(
            top: 80,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const CircleAvatar(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Halo, Samule",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_alarm_outlined),
                          Text("+1600 followers"),
                        ],
                      )],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget menu() {
    return Container(
      color: const Color(0xFF3F5AA6),
      child: const SafeArea(
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
            Tab(
              icon: Icon(Icons.mail),
            ),
          ],
        ),
      ),
    );
  }
}