import 'package:flutter/material.dart';
import 'package:sentinel/PatientPriorityList/Control/priotity_list_model.dart';
import 'package:sentinel/PatientInfo/ui/Screen/PatientInfo.dart';
import 'package:sentinel/PatientPriorityList/ui/Screen/PatientPriorityList.dart';
import '../../../PatientList/ui/Screen/PatientList.dart';

class PriorityCard extends StatelessWidget {
  final PriorityListModel priorityListModel;

  PriorityCard(this.priorityListModel);
  @override
  Widget build(BuildContext context) {
    return
        InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(
                builder: (context) {
              return  PatientInfo();
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
                        "${priorityListModel.name}",style: TextStyle(fontSize: 16,color: Color(0xFF000000))),
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
