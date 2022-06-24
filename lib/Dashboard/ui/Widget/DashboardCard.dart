import 'package:flutter/material.dart';
import 'package:sentinel/Dashboard/Control/CardControl.dart';
import '../../Control/CardControl.dart';
class DashboardCard extends StatelessWidget{

  late CardModel cardModel ;

  DashboardCard(this.cardModel);

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: MediaQuery.of(context).size.height*0.3,
              child:Card(
                    elevation:0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Spacer(),
                            Text("${cardModel.type}"),
                            Spacer(),
                            Image.asset("${cardModel.typeImage}"),
                            Spacer()
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                        Text("${cardModel.numberOfPatients.toString()}",
                            style: const TextStyle(
                                fontSize: 46,
                                fontWeight: FontWeight.w900,
                                color: Colors.blue)),
                        const Text("PATIENTS",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w900)),
                        IconButton(
                          icon: Image.asset("assets/images/Polygon.png"),
                          onPressed: () { },),
                        SizedBox(height:MediaQuery.of(context).size.height*0.0125),
                        Text("${cardModel.time}",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                color: Color(0xFFA4AEB4))),
                      ],
                    )
    )
                );
}}
