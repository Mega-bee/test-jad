import 'package:flutter/material.dart';
import '../../../Filter1/ui/Screen/Filter1.dart';
import '../Widget/PatientCard.dart';
import 'package:sentinel/PatientList/Control/PatientListModel2.dart';

class PatientList extends StatelessWidget {
  late final PatientListModel2 patientListModel2;

 PatientList(this.patientListModel2);

List<PatientListModel2> ListOfPatients = [
  PatientListModel2(
    name: "Olivia bale",
  ),
  PatientListModel2(
    name: "Peter",
  ),
  PatientListModel2(
    name: "Chris",

  ),
  PatientListModel2(
    name: "David",

  ),
  PatientListModel2(
    name: "Jad",
  ),
  PatientListModel2(
      name: "Charbel"
  ),
  PatientListModel2(
      name: "Jad"
  ),
  PatientListModel2(
      name: "Peter"
  ),
];
void searchPatientList(String query){
final suggestions = ListOfPatients.where((ListOfPatients)
{
  final PatientName = patientListModel2.name!.toLowerCase();
  final input = query.toLowerCase();
  return PatientName.contains(input);
}).toList();
// setState(()
// =>
// patientListModel2=suggestions as PatientListModel2
// );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1BA3FC) ,
          automaticallyImplyLeading: false,
          // leadingWidth:MediaQuery.of(context).size.width,
          toolbarHeight:
          MediaQuery.of(context).size.height * 0.233,
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          Column(
          children: [
          Container(
            width: double.infinity,
          height: MediaQuery
              .of(context)
              .size
              .height * 0.25,
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Column(
                  children: [
                        SafeArea(child: Container(
                        color: Color(0xFF1BA3FC),
                      ),),
                        const Text(
                            "Patient List",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white
                            ),
                            textAlign: TextAlign.left),
                        SizedBox(height: 20,),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(15),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(

                              borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            hintText: 'Search Patients',
                            prefixIcon: IconButton(
                                icon: Icon(Icons.search),
                                onPressed: () {}
                            ),),
                          onChanged: searchPatientList,
                        ),
                      ],
                    )
          ))]
              )
              ])),
        body: SingleChildScrollView(
          child:
        Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.7,
            child: ListView.builder(
                itemCount: ListOfPatients.length,
                itemBuilder: (context, index) {
                  return PatientCard(ListOfPatients[index]);
                }
            )
        )
        )
    );
  }
}
