import 'package:flutter/material.dart';
import 'package:sentinel/PatientList/Control/PatientListModel2.dart';

import '../../../PatientInfo2/ui/Screen/PatientInfo2.dart';
class PatientCard extends StatelessWidget {
  final PatientListModel2 patientListModel2;

  const PatientCard(this.patientListModel2);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) {
                  return PatientInfo2();
                },
              ),
            );
          },
          child: Container(
              height: 73,
              child: Padding(
                padding: EdgeInsets.fromLTRB(25,0, 25, 0),
                child: Row(
                    children: [
                      Text(
                          "${patientListModel2.name}",style: TextStyle(fontSize: 16,color: Color(0xFF000000))),
                      Spacer(),
                      // Image.asset("${priorityListModel.heartrateIcon}"),
                      // Image.asset("${priorityListModel.bodytempIcon}"),
                      // Image.asset("${priorityListModel.bloodpresureIcon}"),
                      // Image.asset("${priorityListModel.bloodoxygenIcon}")
                    ]
                ),
              )
          )
      );
  }
}
