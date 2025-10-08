import 'package:flutter/material.dart';
import 'package:employee_figma/globalpage.dart';

class Profile  extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: PreferredSize(preferredSize: const Size.fromHeight(80),
    child: AppBar(backgroundColor:Colors.blueGrey,elevation: 0 ,
    ),
    ),
      body: Stack(clipBehavior: Clip.none,
        children: [Column(
          children: [
            Positioned(top: 0,
                left: 0,
                right: 0,
                child: CircleAvatar(radius: 50,backgroundImage: AssetImage('images/women.jpeg'),))
          ],
        )],
      ),

    );
  }
}
