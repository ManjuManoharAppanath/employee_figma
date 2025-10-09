import 'package:flutter/material.dart';
import 'package:employee_figma/globalpage.dart';
import 'globalpage.dart';
class Attendance   extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlobalAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.blue[50], // just background base
                  ),
                  Positioned(top: 10, left: 20, right: 20,
                    child: Card(
                      elevation: 8,margin: EdgeInsets.symmetric(vertical: 10,horizontal: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text('Todays Attendance',
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Check in"),
                                Switch(
                                  value: isChecked,
                                  activeColor: Colors.green,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  },
                                ),
                                const Text("Check out"),
                              ],

                            ),
                            Container(height: 20, width: 60,
                              // color: Color(),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffD5F2D4),
                              ),
                              child: Center(child: Text('General Shift',style: TextStyle(fontSize: 10,
                                  color: Colors.green),)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Container(height: 50, width: 80,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0X1F767680),

                                  ),
                                  child: Center(child: Text('Aug  1,2025')),
                                ),
                                  SizedBox(width: 4,),
                                Container(height: 50, width: 80,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0X1F767680),

                                  ),
                                  child: Center(child: Text('9.41 AM')),
                                ),SizedBox(width: 3,),

                                Container(height: 50, width:70,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xff498865),

                                  ),
                                  child: Row(
                                    children: [ Icon(Icons.browse_gallery_rounded,color: Colors.white,size: 14,),
                                      SizedBox(width: 3,),
                                      Center(child:
                                      Text('Check In',style: TextStyle(color: Color(0xffFFFFFF),
                                          fontSize:14 ),)),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            Divider(color: Colors.black, thickness: 0.5,),
                            SizedBox(height: 5,),
                            Container(height: 30, width: 100,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffCE8130),

                              ),
                              child: Center(child: Text('Mark as absent',
                                style: TextStyle(fontSize: 13,color: Colors.white),)),
                            ),
                          ],),
                      ),
                    ),
                  ),
                  ],),
SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ Text('Your Activities'),
              Text('view All', style: TextStyle(
                  decoration: TextDecoration.underline, color: Colors.blue),),
            ],
          ),
          SizedBox(height: 15,),
          Checkio(checkyn: 'Check In', date: 'Aug 1,2025', time: '09:35 AM'),
          Checkioc(
            checkyn: 'Check Out',
            date: 'July 31,2025',
            time: '06.35 AM',
            hour: 'Hours worked :09',),
          Checkio(checkyn: 'Check In', date: 'Aug 1,2025', time: '09:35AM'),
          Checkioc(
            checkyn: 'Check Out',
            date: 'july 31,2025',
            time: '06.35 AM',
            hour: 'Hours worked :09',),
          ],),
        ),
      )
    );
  }
}