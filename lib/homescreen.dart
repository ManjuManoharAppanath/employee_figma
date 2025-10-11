import 'package:employee_figma/attendance.dart';
import 'package:employee_figma/profile.dart';

import 'globalpage.dart';
import 'package:flutter/material.dart';

class Homescreen  extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  @override

  Widget build(BuildContext context) {
    return  Scaffold(appBar: GlobalAppbar(),
body:SingleChildScrollView(
  child:   Column(crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [SizedBox(height: 5,),
  
      Text('My Appointments',style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xff000000)),),
  
      SizedBox(height: 5,),
  
      Appointment(Servicename: 'Deep cleansing facial', client:'Akarsh KK', duration:60 ,
  
          Bookid: "BK25000021", datetime: 'fri,Aug 23,2025 at 12.30 AM', price: 'AED 150',
  
          status: 'Confirmed'),
  
  
  
      SizedBox(height: 10,),
  
      Text('Next Appointments',style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xff000000)),),
  
      SizedBox(height: 5,),
  
      Appointment(Servicename: 'Deep cleansing facial', client:'Akarsh KK', duration:60 ,
  
          Bookid: "BK25000021", datetime: 'sat,Aug 23,2025 at 11.30 AM', price: 'AED 150',
  
          status: 'Confirmed'),
  
    ],
  
  ),
),

    );
  }
}
