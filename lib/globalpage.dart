import 'package:flutter/material.dart';
import 'package:employee_figma/homescreen.dart';

class GlobalAppbar  extends StatelessWidget  implements PreferredSizeWidget{

  GlobalAppbar({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.blueGrey,toolbarHeight: 100,shadowColor: Colors.grey,elevation:20,
title:
  Center(
    child: Padding(
      padding: const EdgeInsets.only(top:5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
        CircleAvatar(radius: 30,backgroundImage: AssetImage('images/women.jpeg'),
),
Column(mainAxisAlignment: MainAxisAlignment.start,
  children: [
      Text('Good morning....'),
SizedBox(height: 5,),
Text('sarah',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
],),
const Spacer(),
IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,),
),
],
),
    ),
  ),

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}


class Appointment  extends StatelessWidget {
  final String Servicename;
  final String client;
  final int duration;
  final String Bookid;
  final String datetime;
  final  String price;
  final String status;

  const Appointment({Key? key,required this.Servicename,required this.client,
    required this.duration,required this.Bookid,
    required this.datetime,required this.price,required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
      child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Servicename,style:
            TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5,),
            Text('client : $client - $duration min'),
            SizedBox(height: 5,),
            Text('Booking : $Bookid - Total $duration min'),
            SizedBox(height: 5,),
            Row(
              children: [Icon(Icons.calendar_today),Text(datetime),
              ],
            ),
            SizedBox(height: 5,),
            Row(children: [Icon(Icons.check_circle_outline),Text(price),

            ],),
SizedBox(height: 8,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 50,width: 80,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,

                  ),
                  child: Center(child: Text(status)),
                ),
                Icon(Icons.check_circle),
              ],
            ),
          ],
        ),),
    );
  }
}





class Checkio  extends StatelessWidget {
  final String date;
  final String time;
  final String checkyn;
  
  const Checkio({Key? key,required this.checkyn,required this.date,required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
    ),margin: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
      child: Center(
        child: Column(
          children: [
            Text(checkyn,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text('$date at $time'),
          ],
        ),
      ),
    );
  }
}

class Checkioc  extends StatelessWidget {
  final String date;
  final String time;
  final String checkyn;
  final String hour;

  const Checkioc({Key? key,required this.checkyn,required this.date,required this.time,required this.hour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
    ),margin: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
      child: Center(
        child: Column(
          children: [
            Text(checkyn,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Row(
              children: [
                Text('$date at $time'),
                Container(height: 20,width: 30,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,

                  ),
                  child: Center(child: Text(hour)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class bottomnav   extends StatelessWidget {
  final int Selectedindex;
  final Function(int)ontap;
  const bottomnav({Key? key,required this.Selectedindex,required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    BottomNavigationBar(currentIndex: Selectedindex,
      onTap: ontap,
      items: const[BottomNavigationBarItem(icon: Icon(Icons.calendar_month_rounded),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.lock_clock),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),

      ],),);
  }
}


