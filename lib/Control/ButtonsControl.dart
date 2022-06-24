import 'package:flutter/material.dart';
import 'package:sentinel/GeneralInfo/GeneralInfo.dart';
import 'package:sentinel/NavigationBar/MainNavigationBar.dart';
import 'package:sentinel/PatientPriorityList/Control/priotity_list_model.dart';
import 'TabBarControl2.dart';

class buttonsPatient {
  // static void PatientPriotityListButton(context) {
  //   Navigator.push(
  //       context,
  //     MaterialPageRoute(builder: (context) {
  //       return const PatientInfo( patientpriopritylist: prio[index],,);
  //     }),
  //   );
  // }
}
class buttonsPatient2 {
  static void PatientPriotityListButton(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return TabBarControl2();
      }),
    );
  }
}
class buttonExit1 {
  static void PatientPriotityListInfoButton(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return  MainNavigationBar();
      }),
    );
  }
}
//  Widget  _PatientPriotityListTextButton(String name,context) {
//   return TextButton(
//       onPressed: () { buttonsPatient.PatientPriotityListButton(context);},
//       child:Container(
//           height: 73,
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(25,0, 25, 0),
//             child: Row(
//                 children: [
//                   Text(name,style: TextStyle(fontSize: 16,color: Color(0xFF000000)),),
//                 ]
//             ),
//           )
//       )
//   );
// }
class MySearchDelegate extends SearchDelegate {
  List<String> searchResults=[
    "Peter"
  ];
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(
          Icons.arrow_back,
      color: Colors.blueAccent,
      ),

    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
  List<String> suggestions = searchResults.where((searchResults) {
    final result = searchResults.toLowerCase();
    final input = query.toLowerCase();
    return result.contains(input);
  }).toList();

  return ListView.builder(
    itemCount:suggestions.length
  , itemBuilder: (context,  index) {
        final suggestion=suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: (){
            query=suggestion;
            showResults(context);
            },
        );
  },);
  // throw Text("No suggestions")
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(icon: Icon(Icons.clear),
      onPressed: (){
      if(query.isEmpty){
        close(context, null);
      }
      else{query="";}
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
        child: Text(
            query
        )
    );
  }}
// void findPersonNameUsingIndex(List<PriorityListModel> prio, String PersonName){
//   final index = name.indexWhere((element) {
//     element.name == PersonName;
//   });
// }
// class TabBarControl1 {
//   static void TabBarView2(context) {
//     TabBarView(
//       children: <Widget>[
//         GeneralInfo(),
//         TrackingInfo(),
//         HistoricalHealth()
//       ],
//     ),
//   }
// }