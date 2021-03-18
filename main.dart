import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';

import 'mange.dart';

//flutter build apk --build-name=1.0.1 --build-number=1

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: circularSlider(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class circularSlider extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
        
          children: [
            Padding(padding:EdgeInsets.only(bottom:100)),
            Text("Daily Usage",style: TextStyle(fontSize: 25)),
             Padding(padding:EdgeInsets.only(bottom:80)),
              CircularPercentIndicator(
                progressColor:Colors.lightBlueAccent,
                percent: 0.5,
                animation: true,
                radius: 250,
                lineWidth: 15,
                circularStrokeCap: CircularStrokeCap.round,
                center: Text("\t\t\t\t\t\t\t 8.1 \n Hours Used",style: TextStyle(fontSize: 30)),
               
              ),
               Padding(padding:EdgeInsets.only(bottom:10)),
              Text("Updated 2 mins ago"),
             Padding(padding:EdgeInsets.only(bottom:120)),
              GestureDetector(
                
                  child:  Text("Mange Limit >",style:TextStyle(fontSize: 20,color: Colors.lightBlueAccent)),
                  onTap: () {
                    
                                    Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Mange()));
                    
                  }
                ),
          ],
        ),
      ),
    );
  }
  
}
