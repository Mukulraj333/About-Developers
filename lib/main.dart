import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:about/main.dart';

void main(){
  runApp(const About());
}

class About extends StatelessWidget{
  const About({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Developers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Developers', style: TextStyle( fontWeight:FontWeight.bold),),
      ),
      body: Container(
        color:  Colors.white,
        child: Column(
          children: [

            ////////////  Team Manager  ///////////

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text('Team Manager', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
            ),
            manger("Mukul", "CSE", "2022-26", 'assets/images/29721.jpg'),

            ///////////  Team  ///////////

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text('Team ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
            ),
            manger("Mukul", "CSE", "2022-26", 'assets/images/29721.jpg'),
            manger("Mukul", "CSE", "2022-26", 'assets/images/29721.jpg'),
            // manger("Mukul", "CSE", "2022-26", 'assets/images/29721.jpg'),
          ],
        ),
      ),
    );
  }

  Widget manger(String name, String branch, String batch, String imageAdd) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 175,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ////// Image Add  //////

                Container(
                  margin: const EdgeInsets.all(2),
                  height: 175,
                  width: 175,
                  // child: Image.asset(imageAdd),
                  child: const CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage('assets/images/29721.jpg'),
                    radius: 150,
                  ),
                ),

                const SizedBox(width: 10),

                //////// Personal Info ///////

                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name: $name", style: const TextStyle(fontSize: 20)),
                        Text("Branch: $branch", style: const TextStyle(fontSize: 20)),
                        Text("Batch: $batch", style: const TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}