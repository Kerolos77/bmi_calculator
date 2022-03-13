import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final bool ismale ;
  final int age,height,weight;
  final double bmi;
  result({
    required this.ismale, required this.age,required this.height,required this.weight,required this.bmi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'BMI RESULT',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'GENDER',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white24, fontSize: 15),
                            ),
                            Icon(
                              ismale
                                  ? Icons.male
                                  : Icons.female,
                              color: Colors.white,
                              size: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white24, fontSize: 15),
                            ),
                            Text(
                              '${age}',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'HEIGHT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white24, fontSize: 15),
                            ),
                            Text(
                              '${height}',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white24, fontSize: 15),
                            ),
                            Text(
                              '${weight}',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding (
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'BMI',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.teal, fontSize: 30),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '${bmi.round()}',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.teal, fontSize: 50),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
