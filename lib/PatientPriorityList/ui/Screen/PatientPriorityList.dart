import 'package:flutter/material.dart';
import 'package:sentinel/Filter1/ui/Screen/Filter1.dart';
import 'package:sentinel/Filter2/ui/Screen/Filter2.dart';
import 'package:sentinel/PatientPriorityList/Control/PatientPriorityListModel.dart';
import 'package:sentinel/PatientPriorityList/ui/Widget/PriorityPatientsCard.dart';
class PatientPriorityList extends StatefulWidget {
  const PatientPriorityList({Key? key}) : super(key: key);

  @override
  State<PatientPriorityList> createState() => _PatientPriorityListState();
}

List<PriorityListModel> ListOfPriorityPatients = [
  PriorityListModel(
    name: "Peter",
  ),
  PriorityListModel(
    name: "David",
  ),
  PriorityListModel(
    name: "Chris",

  ),
  PriorityListModel(
    name: "Kamal",

  ),
  PriorityListModel(
    name: "Charbel",
  ),
  PriorityListModel(
      name: "Hadi"
  ),
  PriorityListModel(
      name: "Jad"
  ),
  PriorityListModel(
      name: "Walid"
  ),
];
class _PatientPriorityListState extends State<PatientPriorityList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFED0B19) ,
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
                                      color: Color(0xFFED0B19),
                                    ),),
                                    const Text(
                                        "Patient Priority List",
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
                                        ),
                                        suffixIcon: IconButton(
                                            color: Colors.blue,
                                            icon: Icon(Icons.filter_alt_outlined),
                                            onPressed: () {
                                              showModalBottomSheet(
                                                  builder: (BuildContext context) => const Filter1(),
                                                  context: context
                                              );
                                            }
                                        ),
                                      ),
                                      // onChanged: searchPatientList,
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
                    itemCount: ListOfPriorityPatients.length,
                    itemBuilder: (context, index) {
                      return PriotityPatientCard(ListOfPriorityPatients[index]);
                    }
                )
            )
        )
    );
    }
  }
