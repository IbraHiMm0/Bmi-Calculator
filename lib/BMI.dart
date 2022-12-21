import 'dart:math';

import 'package:bmi/bmiResult.dart';
import 'package:flutter/material.dart';

class BMI extends StatefulWidget {

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  bool isMale=true;
  double height =180.0;
  double weight=40.0;
  double age=18;

  Widget build(BuildContext context) {
    return Scaffold
      (

      appBar: AppBar(
        backgroundColor: Color(0xFF030310),

        title: Center(
          child: Text(
            'BMI Calculator',

          ),
        ),

      ),
      body: Container(
        color: Color(0xFF0d091d),
        child: Column(

          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: isMale ? Color(0xFFc72843) : Color(0xFF0f1723),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          Image(
                          image: AssetImage('images/male.png',),
                          color: Colors.white,
                          height: 65.0,
                          width: 65.0,
                        ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'roboto',
                                  color: Colors.white70,
                                  fontSize: 20.0,

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: !isMale ? Color(0xFFc72843) : Color(0xFF0f1723),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                  image: AssetImage('images/female.png'),
                                  color: Colors.white,
                                  height: 65.0,
                                  width: 65.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'roboto',
                                  color: Colors.white70,
                                  fontSize: 20.0,

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
            //1
                ),
              ),
            ),
            //1bs
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFF0f1723),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 40.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [

                            Text(
                              '${height.round()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Colors.white
                              ),
                            ),

                            Text(
                              'CM',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                  color: Colors.white

                              ),
                            ),
                          ],
                        ),
                        Slider(
                          activeColor: Color(0xFFc72843),
                          inactiveColor: Colors.white54,
                          //thumbColor: Color(0xFFc72843),

                          value: height,
                            max: 250,
                            min: 70,
                            onChanged: (value) {
                              setState(() {
                                height=value;
                              });
                            },
                        ),
                      ],
                    ),
                  ),
                )
            ),
            //2bs
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFF0f1723),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'roboto',
                                color: Colors.white,
                                fontSize: 25.0,
                              ),

                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '${weight.round()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'roboto',
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Container(
                                    width: 35.0,
                                    height: 35.0,
                                    child: FloatingActionButton(
                                      backgroundColor: Color(0xFFc72843),
                                      onPressed: (){
                                          setState(() {
                                            weight--;
                                          });

                                        },
                                      heroTag: 'weight-',
                                      mini: true,
                                      child: Icon(
                                        Icons.remove,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Container(
                                    width: 35.0,
                                    height: 35.0,
                                    child: FloatingActionButton(
                                      backgroundColor: Color(0xFFc72843),

                                      onPressed:(){
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      heroTag: 'weight+',
                                      mini: true,
                                      child: Icon(
                                        size: 20.0,
                                        Icons.add,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFF0f1723),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'roboto',
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),

                            Text(
                              '${age.round()}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'roboto',
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Container(
                                  width: 35.0,
                                  height: 35.0,
                                  child: FloatingActionButton(
                                    backgroundColor: Color(0xFFc72843),
                                    onPressed:(){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    heroTag: 'age-',
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                  width: 35.0,
                                  height: 35.0,
                                  child: FloatingActionButton(
                                    backgroundColor: Color(0xFFc72843),
                                    onPressed:(){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: 'age+',
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                      size: 20.0,

                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //3bs
            Container(
              width: double.infinity,
              height: 50.0,
              color: Colors.blue,
              child: MaterialButton(
                color: Color(0xFFc72843),
                onPressed: (){
                  double result =weight/pow(height/100,2);
                  print(result);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>bmiResult(
                            weight:weight,
                            result: result.round(),
                            age :age,
                            isMale: isMale,
                          ),
                      )
                  );
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

