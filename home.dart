import 'package:flutter/material.dart';
import 'package:new_drawer/last_page.dart';
import 'package:new_drawer/newdrawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

    @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
                width: 200,
              child: Image.asset('assets/img/background.jpeg')),
               ElevatedButton(onPressed: (){
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Page3
            ()));
          }, child: const Text("Next Page >>"),),
          ElevatedButton(onPressed: (){
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NewDrawer
            ()));
          }, child: const Text("<< Back Page")),
          ]
        )
    );
  }
}