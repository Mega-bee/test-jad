import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sentinel/GeneralInfo/GeneralInfo.dart';
import 'package:sentinel/PatientPriorityList/Control/PatientPriorityListModel.dart';
import '../../../TrackingInfo/ui/Screen/TrackingInfo.dart';

class PatientInfo extends StatefulWidget {
  const PatientInfo({Key? key,}) : super(key: key);
  @override
  State<PatientInfo> createState() => _PatientInfoState();
}

class _PatientInfoState extends State<PatientInfo> {
  late final PriorityListModel priorityListModel;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
                // leadingWidth:MediaQuery.of(context).size.width,
            toolbarHeight:
            MediaQuery.of(context).size.height * 0.1848,
              title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.592,),
                  Text( "${priorityListModel.name}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.white)),
                Spacer(),
                ]
              ),
              actions: <Widget>[
                // Padding(
                //   padding: EdgeInsets.fromLTRB(0,78,42,50),
                // // MediaQuery.of(context).size.width*0.5128,
                // // MediaQuery.of(context).size.height*0.0592,
                // // MediaQuery.of(context).size.width*0.11,
                // // MediaQuery.of(context).size.height*0.1255,
                // //   ),
                // child:
                   new IconButton(
                      alignment: Alignment.centerRight,
                      icon: new Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    ],
              backgroundColor: Color(0xFFED0B19),
          bottom:  PreferredSize(
            preferredSize: Size.fromHeight(87),
            child:Container(
              color: Colors.white,
              child:
                const TabBar(
                  indicatorColor:Color(0xFF056CF2),
                // controller: _tabController,
                tabs: [
                  Text("General Info",style: TextStyle(fontSize: 16,color: Color(0xFF939393)),),
                  Text("Tracking Info",style: TextStyle(fontSize: 16,color: Color(0xFF939393)),),
                ],
          ),
              )
            ),
          ),
    body:  const TabBarView(
          children: <Widget>[
            GeneralInfo(),
            TrackingInfo()
          ],
        )
        )
            );
  }
}
