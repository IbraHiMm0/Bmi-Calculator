import 'package:flutter/material.dart';


class bmiResult extends StatelessWidget {

 final int result;
 final bool isMale;
 final double age;
 final double weight;


  bmiResult({
    required this.result,
    required this.age,
    required this.isMale,
    required this.weight,

  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF030310),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
           icon:  Icon(
            Icons.arrow_back_ios_rounded,
          ),

        ),
        title: Text(
          'BMI Result'
        ),

      ),
      body: Container(
        color: Color(0xFF0f1723),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [

                  Text(
                    'Gendar :  ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white
                    ),
                  ),

                  Text(
                    '${isMale?'Male':'Female'}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Color(0xFFc72843)

                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [

                  Text(
                    'Result : ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white

                    ),

                  ),

                  Text(
                    '${result}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Color(0xFFc72843)

                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [

                  Text(
                    'AGE : ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white

                    ),

                  ),

                  Text(
                    '${age.round()}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Color(0xFFc72843)

                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [

                  Text(
                    'Weight : ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white

                    ),

                  ),

                  Text(
                    '${weight.round()}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Color(0xFFc72843)

                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
