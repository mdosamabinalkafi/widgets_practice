import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TablePage(),
    );
  }
}

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ElevatedButton(onPressed: (){
          
          showDialog(context: context, builder: (context) => AlertDialog(
            title: Text("This is Dialog Title"),
            content: Text("This is description"),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Okey"))
            ],
          ));
          
        }, child: Text("showDialog")),
      ),
      
      
      
    );
  }
}

class SliderPage extends StatelessWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CarouselSlider(
        items: [
          Card(
            color: Colors.green,
            child: Container(
              height: 150,
            ),
          ),
          Card(
            color: Colors.green,
            child: Container(
              height: 150,
            ),
          ),
          Card(
            color: Colors.green,
            child: Container(
              height: 150,
            ),
          ),
          Card(
            color: Colors.green,
            child: Container(
              height: 150,
            ),
          ),
          Card(
            color: Colors.green,
            child: Container(
              height: 150,
            ),
          ),

      ], options:CarouselOptions(

        autoPlay: true,
        autoPlayCurve: Curves.ease,
        enlargeCenterPage: true,

      ) ,

      )

      

    );
  }
}

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          border: TableBorder.all(width: 1,color: Colors.black),

          children: [
            TableRow(
              children: [
                Text("data",textAlign: TextAlign.center,),
                Text("data",textAlign: TextAlign.center,),
                Text("data",textAlign: TextAlign.center,),
              ]
            ),
            TableRow(
                children: [
                  Text("data",textAlign: TextAlign.center,),
                  Text("data",textAlign: TextAlign.center,),
                  Text("data",textAlign: TextAlign.center,),
                ]
            ),
            TableRow(
                children: [
                  Text("data",textAlign: TextAlign.center,),
                  Text("data",textAlign: TextAlign.center,),
                  Text("data",textAlign: TextAlign.center,),
                ]
            ),
          ],

        ),
      ),

    );
  }
}




