import 'package:flutter/material.dart';
import 'package:sentinel/Dashboard/ui/Screen/Dashboard.dart';
import 'package:sentinel/Notfications/ui/Screen/Notifications.dart';
import 'package:sentinel/PatientList/ui/Screen/PatientList.dart';
import 'package:sentinel/PatientPriorityList/ui/Screen/PatientPriorityList.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({Key? key}) : super(key: key);

  @override
  State<MainNavigationBar> createState() => MainNavigationBar_State();
}
int _selectedIndex = 0;
final Screens=[
  Center(child: Dashboardd(),),
  Center(child: PatientPriorityList(),),
  Center(child: PatientList(),),
  Center(child: Notifications(),)
];
class MainNavigationBar_State extends State<MainNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF126CF2),
            elevation:0,
 selectedIconTheme: const IconThemeData(color: Colors.grey),

 unselectedIconTheme: const IconThemeData(
 color: Colors.white,

 ),
                   type: BottomNavigationBarType.fixed,
                   items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(
             // backgroundColor: Color(0xFF126CF2),
              icon: Icon(Icons.dashboard),
              label: '',
            ),
            BottomNavigationBarItem(
              // backgroundColor: Color(0xFF126CF2),
              icon: ImageIcon(AssetImage("assets/images/NavBar2.png")),

              label: '',

            ),

            BottomNavigationBarItem(
              // backgroundColor: Color(0xFF126CF2),
              icon: Icon(Icons.person_add_alt_rounded),
              label: '',),

            BottomNavigationBarItem(
              // backgroundColor: Color(0xFF126CF2),
              icon: Icon(Icons.notifications),
              label: '',
            ),

          ],
          currentIndex: _selectedIndex,
          onTap:(index)=> setState(() => _selectedIndex=index,//New
          ),

        )
    );
  }
}
