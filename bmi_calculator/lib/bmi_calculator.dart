import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'result_screen.dart';

class bmiCalculator extends StatefulWidget {
  const bmiCalculator({Key? key}) : super(key: key);

  @override
  State<bmiCalculator> createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {
  int v = 130;
  int ceki = 45;
  int yas = 10;
   String ?netice;
  Color boxColor1 = Colors.blueGrey;
  Color boxColor2 = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("BMI CALCULATOR"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                genderBox(ikon: FontAwesomeIcons.male, metn: "KİŞİ"),
                genderBox(ikon: FontAwesomeIcons.female, metn: "QADIN"),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,
              ),
              child: Column(children: [
                const Text(
                  "BOY",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      v.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Text(
                          "sm",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                Slider(
                  min: 130,
                  max: 220,
                  value: v.toDouble(),
                  activeColor: Colors.green,
                  inactiveColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      v = value.round();
                    });
                  },
                ),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "ÇƏKİ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 45.0),
                              child: Text(
                                ceki.toString(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              " kq",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  ceki += 1;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Container(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.red,
                                  ),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  ceki -= 1;
                                });
                              },
                              child: Container(
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.red,
                                ),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    
                    height: 155,
                    width: 160,
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                      
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "YAŞ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          yas.toString(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  yas += 1;
                                });
                              },
                              child: Padding(
                                
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Container(
                                  
                                  child: Icon(
                                    
                                    Icons.add,
                                    
                                    color: Colors.red,
                                  ),
                                  height: 40,
                                  width: 40,
                                  
                                  decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  yas -= 1;
                                });
                              },
                              child: Container(
                                
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.red,
                                  
                                ),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    var answer = ceki / pow(v / 100, 2);
                    var result = answer.toStringAsFixed(0);
                    
                    if (answer < 18.5) {
                      netice = "Çəkiniz normadan aşağıdır";
                      
                    } else if (answer > 18.5) {
                      netice = "Çəkiniz normaldır";
                    } else {
                      netice = "Çəkiniz normadan artıqdır";
                      
                    }

                    

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ResultScreen(result: result, netice:netice,  )));
                  },
                  child: Container(
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        "HESABLA",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget genderBox({IconData? ikon, String? metn}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (metn == "KİŞİ") {
            setState(() {
              boxColor1 = Colors.blue;
              boxColor2 = Colors.blueGrey;
            });
          } else {
            setState(() {
              boxColor2 = Colors.blue;
              boxColor1 = Colors.blueGrey;
            });
          }
        },
        child: Container(
          margin: EdgeInsets.all(6),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: metn == 'KİŞİ' ? boxColor1 : boxColor2,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Icon(
              ikon,
              color: Colors.red,
              size: 100,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                metn.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
