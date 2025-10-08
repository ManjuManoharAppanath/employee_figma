import 'package:flutter/material.dart';
import 'package:employee_figma/globalpage.dart';
import 'globalpage.dart';
class Attendance   extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
bool isChecked=true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Scaffold(appBar: GlobalAppbar(),
    body:Column(
      children: [
        Positioned(top:
        AppBar().preferredSize.height/2-50,left: 0,right: 0,
        child: Card(elevation: 8,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
        ),child: Column(children: [
          Text('Todays Attendance',style: TextStyle(fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Checkedout"),
              Switch(
                value: isChecked,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              const Text("Checkedoutin"),
            ],

          ),
          Container(height: 50,width: 80,

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,

            ),
            child: Center(child: Text('General Shift')),
          ),
          Row(
            children: [
              Container(height: 50,width: 80,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,

                ),
                child: Center(child: Text('Aug  1,2025')),
              ),
              Container(height: 50,width: 80,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,

                ),
                child: Center(child: Text('9.41 AM')),
              ),
              Container(height: 50,width: 80,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,

                ),
                child: Center(child: Text('Check In')),
              ),

            ],
          ),
          Divider(color: Colors.black,thickness: 1,),
          Container(height: 50,width: 80,

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange,

            ),
            child: Center(child: Text('Mark as absent')),
          ),        ],),
        ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ Text('Your Activities'),
            Text('view All',style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),),
          ],
        ),
        Checkio(checkyn: 'Check In', date:'Aug 1,2025' , time: '09:35'),
        Checkioc(checkyn: 'Check out', date: 'july 31,2025',time: '06.35',hour: 'Hours worked :09',),
        Checkio(checkyn: 'Check In', date:'Aug 1,2025' , time: '09:35'),
        Checkioc(checkyn: 'Check out', date: 'july 31,2025',time: '06.35',hour: 'Hours worked :09',),
      ],
    ),
      ),
      ],
      );
  }
}

