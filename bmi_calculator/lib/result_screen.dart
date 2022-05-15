import 'package:flutter/material.dart';

import 'bmi_calculator.dart';

class ResultScreen extends StatelessWidget {
  final dynamic result;
  final dynamic netice;
 final amal;
  const ResultScreen({Key? key, required this.result, required this.netice, this.amal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 9, 34),
      appBar: AppBar(
        title: const Text("Result"),
      ),
      
      body: Center(
       
        child: Column(
          children: [
            
            SizedBox(height: 30),
            Container(
              height: 250,
              width: double.infinity,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    result,
                    style: TextStyle(color: Colors.blue, fontSize: 100),
                  ),
                  Text(
                    netice,
                    style: TextStyle(color: Colors.red, fontSize: 20,fontWeight:FontWeight.bold),
                  ),
                  Container(
                    margin:const EdgeInsets.only(top: 50),
                   
                   
                    width:150,
                    height: 50,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                    
                    ),
                    child: TextButton(
                      
                      onPressed: (){
                        Navigator.of(context).pop(bmiCalculator());

                      },
                    
                     child: const Text(
                       "Ana səhifə",
                       style: TextStyle(fontSize: 20,
                       color: Colors.black,
                       ),
                       
                       )),
                  ),
                ],
              ),
              
            ),
          ],
        ),
        
      
      
      ),
      );
  
    
  }
}
