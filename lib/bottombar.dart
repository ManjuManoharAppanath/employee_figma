import 'package:employee_figma/attendance.dart';
import 'package:flutter/material.dart';
import 'package:employee_figma/homescreen.dart';
import 'package:employee_figma/profile.dart';

class Bottomnav  extends StatefulWidget {
  const Bottomnav({Key? key}) : super(key: key);

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int selectedindex=0;
  List<Widget>pages=[Homescreen(),Attendance(),Profile()];
  void ontap(int index){
    setState(() {
      selectedindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: pages[selectedindex],
    bottomNavigationBar: BottomNavigationBar(currentIndex: selectedindex,
    onTap: ontap,items: [
      BottomNavigationBarItem(icon: Icon(Icons.calendar_month_rounded),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.lock_clock),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
      ],
    ),
    );
  }
}
