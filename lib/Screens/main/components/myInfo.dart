import 'package:flutter/material.dart';
AspectRatio myInfo() {
  return AspectRatio(
    aspectRatio: 1.23,
    child: Container(
      color: Color(0xFF242430),
      child:  Column(
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
            style: TextStyle(color: Colors.white),
            //Theme.of(context).textTheme.Subtitle2,
          ),
          Text(
            'Flutter Developer & Founder of \n The Flutter Way',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w200, height: 1.5,color: Colors.grey),
          ),
          Spacer(flex: 2),
        ],
      ),
    ),
  );
}