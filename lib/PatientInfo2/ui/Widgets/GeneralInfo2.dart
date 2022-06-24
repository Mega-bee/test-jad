import 'package:flutter/material.dart';
class GeneralInfo2 extends StatefulWidget {
  const GeneralInfo2({Key? key}) : super(key: key);

  @override
  State<GeneralInfo2> createState() => _GeneralInfo2State();
}

class _GeneralInfo2State extends State<GeneralInfo2> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Drugs/prescriptions",style: TextStyle(color: Color(0xFF939393),fontSize: 15)),
                    Text("Levothyroxine",style: TextStyle(color: Colors.black,fontSize: 15)),
                  ],
                ),
              )
          ),
          Container(
              child:Padding(
                padding:EdgeInsets.fromLTRB(20, 0, 33, 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gender",style: TextStyle(color: Color(0xFF939393),fontSize: 15)),
                    Text("Female",style: TextStyle(color: Colors.black,fontSize: 15)),
                  ],
                ),
              )
          ),
          Container(
              child:Padding(
                padding:EdgeInsets.fromLTRB(20, 0, 33, 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
