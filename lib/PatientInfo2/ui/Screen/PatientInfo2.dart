import 'package:flutter/material.dart';

import '../Widgets/GeneralInfo2.dart';
import '../Widgets/TrackingInfo2.dart';
class PatientInfo2 extends StatefulWidget {
  const PatientInfo2({Key? key}) : super(key: key);

  @override
  State<PatientInfo2> createState() => _PatientInfo2State();
}

class _PatientInfo2State extends State<PatientInfo2> {
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
                    Text( "",
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
              backgroundColor: Color(0xFF1BA3FC),
              bottom:  PreferredSize(
                  preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*0.1030,),
                  child:Container(
                    height: MediaQuery.of(context).size.height*0.1030,
                    color: Colors.white,
                    child: TabBar(
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
            body:   TabBarView(
              children: <Widget>[
                GeneralInfo2(),
                TrackingInfo2()
              ],
            )
        )
    );
  }
}
