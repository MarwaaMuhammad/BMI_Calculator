import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bmi/app_colors.dart';
import 'Result.dart';
import 'dart:math';
import 'Loading.dart';
bool isMale = true;
double height = 180;
int weight = 50;
int age = 20;


class Index extends StatefulWidget {
 Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  //bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculate", style: TextStyle(color:Colors.white),),
        centerTitle: true,
        backgroundColor: kscaffoldColor,
      ),
      backgroundColor: kscaffoldColor,
      body: SafeArea(
          minimum: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: kcardColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: isMale ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            children: const [
                              Icon(Icons.male,
                                  color: Colors.white, size: 80),
                              SizedBox(height: 10),
                              Text(
                                "Male",
                                style:
                                TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: kcardColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: !isMale ? Colors.white : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            children: const [
                              Icon(Icons.female,
                                  color: Colors.white, size: 80),
                              SizedBox(height: 10),
                              Text(
                                "Female",
                                style:
                                TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //SizedBox(height: 30,),
                Spacer(),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kcardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Height", style: TextStyle(color:Colors.grey, fontSize: 20,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toStringAsFixed(0), style: TextStyle(color:Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
                          Text("cm", style: TextStyle(color:Colors.grey, fontSize: 20)),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 80,
                        max: 220,
                        activeColor: kactionColor,
                        inactiveColor: Colors.grey,
                        thumbColor: kactionColor,
                        onChanged: (nvalue) {
                           height=nvalue;
                          setState(() {});
                        },
                      )
                    ],
                  ),
                ),
                //SizedBox(height: 50,),
                Spacer(),

                Row(
                  spacing: 12,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: kcardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text("weight", style: TextStyle(color:Colors.grey, fontSize: 20),),
                            Text(weight.toString(), style: TextStyle(color:Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: kincrementColor,
                                    borderRadius: BorderRadius.circular(30),
                            ),
                                  child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add, color: Colors.white,)),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    color: kincrementColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: IconButton(onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  }, icon: Icon(Icons.remove, color: Colors.white,)),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: kcardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text("Age", style: TextStyle(color:Colors.grey, fontSize: 20)),
                            Text(age.toString(), style: TextStyle(color:Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: kincrementColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: IconButton(onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  }, icon: Icon(Icons.add, color: Colors.white,)),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    color: kincrementColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: IconButton(onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  }, icon: Icon(Icons.remove, color: Colors.white,)),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    double result = weight/pow(height/100, 2);
                    String health;
                   String text;
                    if(result<18.5){
                    health="UNDERWEIGHT";
                    text="You have a lower than normal body weight. Try to gain some weight by exercising regularly";
                  }else if(result>=18.5 && result<=24.9){
                    health="HEALTHYWEIGHT";
                    text="You have a normal body weight. Good job!";
                  }else if(result>=25 && result<=29.9){
                    health="OVERWEIGHT";
                    text="You have a higher than normal body weight. Try to lose some weight by exercising";
                  }else {
                    health="OBESE";
                    text="You have a very high body weight. Try to lose some weight by exercising";
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loading(
                          result: result,
                          health: health,
                          text: text,
                        ),
                      ),
                    );

                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: double.infinity,
                    child: Text("Calculate", style: TextStyle(color:Colors.white, fontSize: 25, )),
                    decoration: BoxDecoration(
                      color: kactionColor,
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),
                ),
              ],
            ),
          )
      )
    );
  }
}
