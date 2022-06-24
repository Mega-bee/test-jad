import 'package:flutter/material.dart';
import 'package:sentinel/Dashboard/Control/CardControl.dart';

import '../Widget/DashboardCard.dart';
class Dashboardd extends StatefulWidget {
  const Dashboardd({Key? key}) : super(key: key);

  @override
  State<Dashboardd> createState() => _DashboarddState();
}
List <CardModel> Cards=[
  CardModel(
    type:"Blood Oxygen",
    numberOfPatients:0,
    typeImage: "assets/images/bloodOxygen.png",
    time: "1 hour ago",
  ),
  CardModel(
    type:"Blood Pressure",
    numberOfPatients:4,
    typeImage:"assets/images/BloodPresure.png",
    time:"3 hours ago",
  ),
  CardModel(
    type:"Body Temperature",
    numberOfPatients:15,
    typeImage:"assets/images/BodyTemp.png",
    time:"2 hours ago",
  ),
  CardModel(
    type:"Heart Rate",
    numberOfPatients:7,
    typeImage:"assets/images/HeartRate.png",
    time:"4 hours ago",
  ),
];
class _DashboarddState extends State<Dashboardd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: BottomAppBar(
      // ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(26, 17, 32, 17),
                child: Row(
                  children: [
                    Text(
                      "Total Patients",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                    Spacer(),
                    // SizedBox(width:MediaQuery.of(context).size.width*0.5),
                    Text("954",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              )),
          SizedBox(height: MediaQuery.of(context).size.height*0.02612),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: Cards.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 62,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                      height: MediaQuery.of(context).size.height*0.3,
                      child:DashboardCard(Cards[index])
                  );
                }),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.0883),
        ],
      ),
    );
  }
}
// onPressed: () {
// Navigator.pop(context);
