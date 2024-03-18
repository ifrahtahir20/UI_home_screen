import 'package:bnaofluttertask1/Dashboard/Details.dart';
import 'package:bnaofluttertask1/Dashboard/events_and_experiances.dart';
import 'package:flutter/material.dart';

import 'Homeappbar.dart';
import 'Programs_for_you.dart';
import 'lessons_for_you.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: Icon(
          Icons.subject,
          color: Colors.grey,
        ),
        title: Row(
          children: [
            SizedBox(
              width: 230,
            ),
            Icon(
              Icons.chat_bubble_outline,
              color: Colors.grey,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.notifications_active_outlined,
              color: Colors.grey,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SafeArea(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: HomeAppBar(),
                    color: Colors.grey.shade100,
                  ),
                  Details(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Programs_for_you(),
                        SizedBox(
                          height: 20,
                        ),
                        Events_and_experiances(),
                        SizedBox(
                          height: 20,
                        ),
                        Lessons_for_you(),
                      ],
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
