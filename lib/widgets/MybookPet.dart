import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBookPetWidget extends StatelessWidget {
  const MyBookPetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.36,
      color: Colors.black,
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'My Book Monster',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              CircleAvatar(
                radius: 70,
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 120,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 120,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 120,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
