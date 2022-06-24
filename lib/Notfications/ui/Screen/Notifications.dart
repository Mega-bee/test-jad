import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sentinel/Notfications/Control/NotificationCardModel.dart';
import 'package:sentinel/Notfications/ui/Widget/NotificationCard.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);
  static const IconData done_rounded =
  IconData(0xf6d4, fontFamily: 'MaterialIcons');

  @override
  State<Notifications> createState() => _NotificationsState();
}

List<NotificationCardModel> prio3 = [
  NotificationCardModel(
    name: "Peter",
    Message: "High blood Oxygen ",
    date: "Today, 9:45 am",
    persentage: 50,
  ),
];

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1BA3FC),
          automaticallyImplyLeading: false,
          // leadingWidth:MediaQuery.of(context).size.width,
          toolbarHeight:
          MediaQuery
              .of(context)
              .size
              .height * 0.185,
          title: Container(
            color: Color(0xFF1BA3FC),
            height: MediaQuery
                .of(context)
                .size
                .height * 0.25,
            child: Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Column(
                    children: [
                      Column(
                        children: [
                          SafeArea(child: Container(
                            color: Color(0xFF1BA3FC),
                          ),),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: const [
                                Text(
                                    "Notifications",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21,
                                        color: Colors.white
                                    ),
                                    textAlign: TextAlign.left),
                                Spacer(),
                                Icon(Icons.notifications, color: Colors.white)
                              ],
                            ),),
                        ],
                      )
                    ]
                )
            ),
          ),
        ),
        body: SingleChildScrollView(
        child:Column(
        children: [
        Container(
        height: MediaQuery.of(context).size.height * 0.7,
    child: ListView.builder(
    itemCount: prio3.length,
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
    return NotificationCard(prio3[index]);
    }))])));
    }
  }
