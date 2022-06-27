import 'package:flutter/material.dart';
import 'package:sentinel/Filter1/ui/Widgets/Filter1Card.dart';

import '../../Model/Filter1Model.dart';
class Filter1 extends StatefulWidget {
  const Filter1({Key? key}) : super(key: key);

  @override
  State<Filter1> createState() => _Filter1State();
}

class _Filter1State extends State<Filter1> {
   List <Filter1Model> Filter1Cards =[
    Filter1Model(
      Type:"Blood Oxygen",
      TypeImage:"assets/images/BloodOxygen2.png"
    ),
    Filter1Model(
        Type:"Blood Presure",
        TypeImage:"assets/images/BloodPresure2.png"
    ),
    Filter1Model(
        Type:"Body Temperature",
        TypeImage:"assets/images/BodyTemp2.png"
    ),
    Filter1Model(
        Type:"Heart Rate",
        TypeImage:"assets/images/HeartRate2.png"
    )
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.fromLTRB(16, 21, 16, 25),
              child: Column(
                  children:[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: Filter1Cards.length,
                          padding: EdgeInsets.zero,
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0,
                              maxCrossAxisExtent: 200),
                          itemBuilder: (BuildContext context, int index) {
                            return
                              Filter1Card(Filter1Cards[index]);
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
               ]
          )
    )
          ),
          );

  }
}
