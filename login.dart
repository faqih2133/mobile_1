import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_drawer/newdrawer.dart';
import 'package:new_drawer/simpledrawer.dart';

void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  static const String _title = 'Halaman Login';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}
 
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
                width: 200,
              child: Image.asset('assets/img/logo.jpeg')),
              
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'MASUK KE LINTAS OLAGRAGA',
                  style: TextStyle(
                      color: Color.fromARGB(255, 1, 11, 18),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            ElevatedButton(onPressed: (){
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NewDrawer
            ()));
          }, child: const Text("LOGIN")),
           ElevatedButton(onPressed: (){
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MyApp2
            ()));
          }, child: const Text("Do you dont have account? << sign in")),
              ],
            ),
        );
  }
}