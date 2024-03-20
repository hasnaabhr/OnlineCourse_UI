// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Lectures extends StatelessWidget {
  const Lectures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff251E91),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cloud_upload,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Drag File to Upload',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'or',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text('Select File',
                      style: TextStyle(color: Colors.grey, fontSize: 20)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Capacity: 1 File Of 8 GB or Less',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Recommended format MP4,MCV,MPG,AVI,WEBM',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Learn more about Video Requirements',
                style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
              ),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
            ],
          ),
        ));
  }
}
