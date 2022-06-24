import 'package:flutter/material.dart';
import '../../Model/Filter2Model.dart';
class Filter2Card extends StatelessWidget {
  late final Filter2Model filter2model;
  Filter2Card(this.filter2model);
  // int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap:(){
          //     setState(() {
          //   if(_selectedIndex == index){
          //     _selectedIndex= -1;
          //   }else{
          //     _selectedIndex= index;
          //   }
          // });
        },
        child:Container(
            width: MediaQuery.of(context).size.width*0.3,
            child:Card(



              // color: index== _selectedIndex  ?
              //        Colors.deepOrangeAccent :
              //        Colors.purpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              elevation: 4,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Image.asset("${filter2model.TypeImage}",color: Colors.redAccent,),
                  const SizedBox(height: 10,),
                  Text("${filter2model.Type}",style: TextStyle(fontSize: 16),)
                ],
              ),
            )
        )
    );
  }
}
