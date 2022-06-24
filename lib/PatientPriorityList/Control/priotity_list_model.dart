import 'dart:ui';
import 'package:sentinel/PatientPriorityList/ui/Screen/PatientPriorityList.dart';
class icons{
 String? bloodoxygenIcon="assets/images/bloodOxygen.png";
 String? bloodpresureIcon="assets/images/bloodOxygen.png";
 String? bodytempIcon="assets/images/bloodOxygen.png";
 String? heartrateIcon="assets/images/bloodOxygen.png";
 icons(this.bloodoxygenIcon,this.bloodpresureIcon,this.bodytempIcon,this.heartrateIcon);
}
 class PriorityListModel{
    String? name;
 //   dynamic Icons(
 //  String? bloodoxygenIcon="assets/images/bloodOxygen.png";
 //  String? bloodpresureIcon="assets/images/BloodPresure.png";
 //  String? bodytempIcon="assets/images/BodyTemp.png";
 //  String? heartrateIcon="assets/images/HeartRate.png";){
 //
 // }
  PriorityListModel({name});
}
List<PriorityListModel> prio1 = [
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
void searchPatients(String query) {
 final suggestions = prio1.where((PriorityListModel) {
  final PatientName = PriorityListModel.name?.toLowerCase();
  final input = query.toLowerCase();
  return PatientName!.contains(input);
 }).toList();
}