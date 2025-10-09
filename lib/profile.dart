import 'package:flutter/material.dart';
import 'package:employee_figma/globalpage.dart';

class Profile  extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: PreferredSize(preferredSize: const Size.fromHeight(80),
    child: AppBar(backgroundColor:Color(0xff374151),elevation: 0 ,
    ),
    ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),
            ),margin: EdgeInsets.symmetric(vertical: 10,horizontal: 16,),color: Color(0xff00000040),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sarah Johnson',style: TextStyle(fontSize: 18,height:1.8,fontWeight: FontWeight.bold,color: Color(0xff374151)),
                  ),
                  SizedBox(height: 10,),
                  Text('ID:656316446ksjdvbskj5',style: TextStyle(fontSize:14 ,height:1.8,color: Color(0xff374151))
                  ),SizedBox(height: 5,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email_outlined,color: Color(0xff374151),),SizedBox(width: 3,),
                      Text('sarah.johson@spa.com',style: TextStyle(fontSize:14 ,height:1.8,color: Color(0xff374151)
                      ),
                      ),
                        ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.group_outlined,color: Color(0xff374151),),SizedBox(width: 3,),
                      Text('Female',style: TextStyle(fontSize:14 ,height:1.8,color: Color(0xff374151)
                      ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone,color: Color(0xff374151),),SizedBox(width: 3,),
                      Text('971501234567',style: TextStyle(fontSize:14 ,height:1.8,color: Color(0xff374151)
                      ),
                      ),
                    ],
                  )
                ],
              ),
            ),
           Personimage(),
           PersonalDetails()
          ],
        ),
      )
    );
  }
}

class PersonalDetails  extends StatelessWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 3),color: Color(0xffF1F1F1),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Personal Details',style: TextStyle(fontSize: 18,height: 1.8,color: Color(0xff000000)
            ),),

            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [Icon(Icons.location_pin,color: Color(0xffE50031),),SizedBox(width: 5,),
                        Text('Address',style: TextStyle(color: Color(0xff374151),fontSize: 14),),SizedBox(width: 5,),
                        Text('Dubai, UAE',style: TextStyle(color: Color(0xff000000),fontSize: 14),),],
                    ),
                    Row(
                      children: [Icon(Icons.calendar_month_rounded,color: Color(0xff3771C8),),
                        SizedBox(width: 7,),
                        Text('Member since',style: TextStyle(color: Color(0xff374151),fontSize: 14),),
                        SizedBox(width: 7,),
                        Text('Jul 5, 2025',style: TextStyle(color: Color(0xff000000),fontSize: 14),),],
                    ),
                    Row(
                      children: [Icon(Icons.person_outline_outlined,color: Color(0xff3771C8),),
                        SizedBox(width: 7,),
                        Text('Role',style: TextStyle(color: Color(0xff374151),fontSize: 14),),
                        SizedBox(width: 7,),
                        Text('Employee',style: TextStyle(color: Color(0xff000000),fontSize: 14),),],
                    ),
                  ],),SizedBox(width: 5,),
                  Column(
                    children: [Row(
                      children: [
                        Icon(Icons.check_circle_outline,color: Color(0xff374151),),
                        Text('Status',style: TextStyle(color: Color(0xff374151),fontSize: 14),),
                        SizedBox(width:5,),
                        Text('Active',style: TextStyle(color: Color(0xff000000),fontSize: 14),),
                      ],
                    ),
                      Row(
                        children: [
                          Icon(Icons.public,color: Color(0xff0040FF),),
                          Text('Language',style: TextStyle(color: Color(0xff374151),fontSize: 14),),
                          SizedBox(width: 5,),
                          Text('En',style: TextStyle(color: Color(0xff000000),fontSize: 14),),
                        ],
                      )
                    ],
                  )], ),),
            Text('Rating Review',style: TextStyle(fontSize: 18,height: 1.8,color: Color(0xff000000)
            ),),
          Reviewbar(),
          ],
              ),
            ),
    );
  }
}

class Personimage  extends StatelessWidget {
  const Personimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Positioned(top: -10,
      child: CircleAvatar(child: CircleAvatar(
        backgroundImage: AssetImage('images/women.jpeg'),
        ),),
    );
  }
}


class Reviewbar  extends StatelessWidget {
  const Reviewbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 3),

    );
  }
}

