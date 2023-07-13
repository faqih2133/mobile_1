import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_drawer/home.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 300,
                width: 300,
              child: Image.asset('assets/img/onboarding_1.jpg')),
              Container(
              height: 300,
                width: 300,
              child: Image.asset('assets/img/onboarding_2.jpg')),
              Container(
              height: 300,
                width: 300,
              child: Image.asset('assets/img/onboarding_3.jpg')),
          ElevatedButton(onPressed: (){
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Home
            ()));
          }, child: const Text("<< Back Page")),
        ],
      ),
      );
  }
}
        