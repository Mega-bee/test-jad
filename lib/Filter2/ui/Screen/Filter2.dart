import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sentinel/Filter1/ui/Widgets/Filter1Card.dart';
import '../../Model/Filter2Model.dart';
import '../Widgets/FilterCard2.dart';

class Filter2 extends StatefulWidget {
  const Filter2({Key? key}) : super(key: key);

  @override
  State<Filter2> createState() => _Filter2State();
}

class _Filter2State extends State<Filter2> {
  static List <Filter2Model> Filter2Cards = [
    Filter2Model(
        Type: "Blood Oxygen",
        TypeImage: "assets/images/BloodOxygen2.png"
    ),
    Filter2Model(
        Type: "Blood Presure",
        TypeImage: "assets/images/BloodPresure2.png"
    ),
    Filter2Model(
        Type: "Body Temperature",
        TypeImage: "assets/images/BodyTemp2.png"
    ),
    Filter2Model(
        Type: "Heart Rate",
        TypeImage: "assets/images/HeartRate2.png"
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 21, 16, 25),
            child: Column(
                children:[
            Container(
            height: MediaQuery.of(context).size.height * 0.45,
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: Filter2Cards.length,
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    maxCrossAxisExtent: 200),
                itemBuilder: (BuildContext context, int index) {
                  return
                    Filter2Card(Filter2Cards[index]);
                }),
          ),
          SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery
          .of(context)
          .size
          .width * 0.8,
      child: ElevatedButton(
        onPressed: () {
          //  Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return const MainNavigationBar();
          //     },
          //   ),
          // );
        },
        // },
        child: const Text(
          "Apply Filters",
          style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xFF126CF2)),
            alignment: Alignment.center,
            shape: MaterialStateProperty.all<
                RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(color: Color(0xFF126CF2)),
            ))),
      ),
    )
])
)
)
,
);

}
}
