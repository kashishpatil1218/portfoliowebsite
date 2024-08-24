import 'package:flutter/material.dart';
class myInfo extends StatelessWidget {
  const myInfo({Key? key,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child:   Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage:
              AssetImage('assets/img/me.jpg'),
            ),
            Spacer(),
            Text(
              'Kashish Patil',
              //style:Theme.of(context).textTheme.bodyMedium,//
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Flutter Developer & Founder of \n The Flutter Way',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200, height: 1.5,),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

