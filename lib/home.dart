import 'dart:math';

import 'package:bmi_calculator/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int hieght = 120, wieght = 60, age = 28;
  bool ismale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        ismale = true;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: ismale ? Colors.teal : Colors.white10,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 80,
                            ),
                            Text(
                              'MALE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white24, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        ismale = false;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: !ismale ? Colors.teal : Colors.white10,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 80,
                            ),
                            Text(
                              'FEMALE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white24, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      style: TextStyle(color: Colors.white24, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${hieght}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'cm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white24,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: Colors.teal,
                      value: hieght + 0,
                      max: 220,
                      min: 80,
                      onChanged: (value) {
                        hieght = value.round();
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
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
                            'WEIGHT',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white24, fontSize: 20),
                          ),
                          Text(
                            '${wieght}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white24,
                                  onPressed: () {
                                    wieght--;
                                    setState(() {});
                                  },
                                  heroTag: 'wieght-',
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  )),
                              FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white24,
                                  onPressed: () {
                                    wieght++;
                                    setState(() {});
                                  },
                                  heroTag: 'wieght+',
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ))
                            ],
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
                            style:
                                TextStyle(color: Colors.white24, fontSize: 20),
                          ),
                          Text(
                            '${age}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white24,
                                  onPressed: () {
                                    age--;
                                    setState(() {});
                                  },
                                  heroTag: 'age-',
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  )),
                              FloatingActionButton(
                                  mini: true,
                                  backgroundColor: Colors.white24,
                                  onPressed: () {
                                    age++;
                                    setState(() {});
                                  },
                                  heroTag: 'age+',
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ))
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
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            color: Colors.teal,
            child: MaterialButton(
                child: Container(
                  height: 40,
                  child: Center(
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                onPressed: () {
                  double resul= wieght/pow(hieght/100,2);
                  print(ismale);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(context) =>result(
                          height: hieght,
                          age: age,
                          bmi: resul,
                          ismale: ismale,
                          weight: wieght,
                        ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
