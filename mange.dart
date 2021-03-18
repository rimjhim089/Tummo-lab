import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';


class Mange extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: circularSlider2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class circularSlider2 extends StatelessWidget{
  
  Widget slider1 = SleekCircularSlider(
    
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(padding:EdgeInsets.only(bottom:100)),
            Text("Set Daily Limit",style: TextStyle(fontSize: 25)),

             Padding(padding:EdgeInsets.only(bottom:100)),
              SleekCircularSlider(
            appearance: CircularSliderAppearance(
                  size: 200,
                  startAngle: 270,
                  angleRange: 360,
                  customWidths: CustomSliderWidths(
                    progressBarWidth:10,
                    
                  ),
                  customColors: CustomSliderColors(
                    hideShadow: true,
                    trackColor: Colors.grey[200],
                    progressBarColor: Colors.lightBlueAccent,
                    shadowMaxOpacity: 20,
                  ),
                  
                ),
                initialValue: 25,
                onChange: (double value){
                  print(value);
                },
              ),
          Padding(padding:EdgeInsets.only(bottom:100)),   
           Icon(Icons.check_circle_outline_rounded,size: 50,color: Colors.green,)
          
          ],
        ),
      ),
    );
  }
  
}

