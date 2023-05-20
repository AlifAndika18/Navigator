import 'package:flutter/material.dart';
import 'package:navigasi/home.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("Navigation")),
    body: Column(
      children: [
        Text("Ini halaman pertama"),
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => home()));
        }, child: Text("Pindah Halaman 2")),
      ],
    ),
    );
  }
}