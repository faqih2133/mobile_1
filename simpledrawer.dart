import 'package:flutter/material.dart';
import 'package:new_drawer/login.dart';
import 'package:new_drawer/newdrawer.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 120, left: 24, right: 24),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Masukan Nama lengkap *',
                      ),
                    ),
                     ElevatedButton(onPressed: (){
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NewDrawer
            ()));
          }, child: const Text("Sign In")),
                    ElevatedButton(onPressed: (){
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MyApp
            ()));
          }, child: const Text("<< Back Page")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}