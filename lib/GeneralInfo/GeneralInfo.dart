import 'dart:ui';
import 'package:flutter/material.dart';

class GeneralInfo extends StatefulWidget {
  const GeneralInfo({Key? key}) : super(key: key);

  @override
  State<GeneralInfo> createState() => _GeneralInfoState();
}

class _GeneralInfoState extends State<GeneralInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child:Padding(
          padding:EdgeInsets.fromLTRB(20, 22, 33, 22),
          child: Column(
            children: [
              Text("Device",style: TextStyle(color: Color(0xFF939393),fontSize: 15),textAlign: TextAlign.left,),
              Text("Assign Device",style: TextStyle(color: Colors.black,fontSize: 15)),
            ],
          ),
        )
      ),
      Container(
          child:Padding(
            padding:EdgeInsets.fromLTRB(20, 0, 33, 22),
            child: Column(
              children: [
                Text("DOB",style: TextStyle(color: Color(0xFF939393),fontSize: 15)),
                Text("data",style: TextStyle(color: Colors.black,fontSize: 15)),
              ],
            ),
          )
      ),
      Container(
          child:Padding(
            padding:EdgeInsets.fromLTRB(20, 0, 33, 22),
            child: Column(
              children: [
                Text("Admission Date",style: TextStyle(color: Color(0xFF939393),fontSize: 15)),
                Text("data",style: TextStyle(color: Colors.black,fontSize: 15)),
              ],
            ),
          )
      ),
      Container(
          child:Padding(
            padding:EdgeInsets.fromLTRB(20, 0, 33, 22),
            child: Column(
              children: [
                Text("Drugs/prescriptions",style: TextStyle(color: Color(0xFF939393),fontSize: 15)),
                Text("data",style: TextStyle(color: Colors.black,fontSize: 15)),
              ],
            ),
          )
      ),
      Container(
          child:Padding(
            padding:EdgeInsets.fromLTRB(20, 0, 33, 22),
            child: Column(
              children: [
                Text("Gender",style: TextStyle(color: Color(0xFF939393),fontSize: 15)),
                Text("data",style: TextStyle(color: Colors.black,fontSize: 15)),
              ],
            ),
          )
      ),
      Container(
          child:Padding(
            padding:EdgeInsets.fromLTRB(20, 0, 33, 22),
            child: Column(
              children: [
                Text("Scheduled Release Date",style: TextStyle(color: Color(0xFF939393),fontSize: 15)),
                Text("data",style: TextStyle(color: Colors.black,fontSize: 15)),
              ],
            ),
          )
      ),
      Container(
          child:Padding(
            padding:EdgeInsets.fromLTRB(20, 0, 33, 0),
            child: Column(
              children: [
                Text("Main Notes",style: TextStyle(color: Color(0xFF939393),fontSize: 15)),
                Text("Lorem ipsum dolor sit amet, consecteturadipiscing elit sed do eiusmod tempor incididuntut labore etdolore magna aliqua. Ut enim ad minim veniam",
                    style: TextStyle(color: Colors.black,fontSize: 15)),
              ],
            ),
          )
      ),
        ],
      ),
    );
  }
}
