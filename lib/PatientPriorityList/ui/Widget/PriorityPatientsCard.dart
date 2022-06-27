import 'package:flutter/material.dart';
import 'package:sentinel/PatientInfo/ui/Screen/PatientInfo.dart';
import '../../../PatientInfo2/ui/Screen/PatientInfo2.dart';
import '../../Control/PatientPriorityListModel.dart';
class PriotityPatientCard extends StatelessWidget {
  final PriorityListModel patientListModel;

  const PriotityPatientCard(this.patientListModel);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) {
                  return PatientInfo();
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
                          "${patientListModel.name}",style: TextStyle(fontSize: 16,color: Color(0xFF000000))),
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
