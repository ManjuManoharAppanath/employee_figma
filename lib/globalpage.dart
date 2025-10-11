import 'package:flutter/material.dart';
import 'package:employee_figma/homescreen.dart';

class GlobalAppbar  extends StatelessWidget  implements PreferredSizeWidget{

  GlobalAppbar({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Color(0xff374151),toolbarHeight: 150,
      shadowColor: Colors.grey,elevation:20,
title:
  Center(
    child: Padding(
      padding: const EdgeInsets.only(top:5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
        Container(height: 40,width: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1,color: Colors.white),
            color: Colors.transparent,),
          child: CircleAvatar(radius: 15,backgroundImage: AssetImage('images/women.jpeg'),
),
        ),SizedBox(width: 4,),
Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
      Text('Good morning.....',style: TextStyle(fontSize: 10),),
SizedBox(height: 5,),
Text('Sarah Johnson',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
],),
const Spacer(),
Container(height: 40,width: 40,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
    border: Border.all(color: Colors.white,width: 2),),
  child:   IconButton(onPressed: (){}, icon: Icon(Icons.logout_outlined,size: 20,),
  ),
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
        color: Color(0xffF1F1F1),
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
            Row(children: [Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),),
                child: Icon(Icons.check_circle_outline,color: Colors.black,)),Text(price),

            ],),
SizedBox(height: 8,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 50,width: 80,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffE3D7FA),

                  ),
                  child: Center(child: Text(status)),
                ),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                    color: Color(0xff374151)),
                    child: Icon(Icons.north_east,color: Colors.white,size: 25,)),
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
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
    ),margin: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        // Left color strip
        Container(
        width: 6,height:70,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff6BC492), Color(0xff498865)],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
      ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(checkyn,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                SizedBox(height: 10,),
                Text('$date at $time',style: TextStyle(color: Color(0xff374151),fontSize: 12),)
              ],
            ),
          ),
        )]
      )
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
      child: Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      // Left color strip
      Container(
      width: 6,height:70,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFF6668), Color(0xff910002)],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
      ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(checkyn,style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('$date at $time'),
                    SizedBox(width: 10,),
                    Container(height: 20,width: 100,

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffD5F2D4),

                      ),
                      child: Center(child: Text(hour,style: TextStyle(color: Colors.green,fontSize: 8),)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        ],
      ));
  }
}




