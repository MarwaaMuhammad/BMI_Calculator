import 'dart:math';

import 'package:flutter/material.dart';
import '../app_colors.dart';
import 'Index.dart';
// double result = weight/pow(height/100, 2);
// Null health= null;
// Null text=null;
class Result extends StatelessWidget {
   const Result({
     super.key,
     required this.result,
     required this.health,
     required this.text,
   });
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          backgroundColor: kscaffoldColor,
          body: SafeArea(
            minimum: EdgeInsets.all(20),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Index()));
                },
                    icon: Icon(Icons.arrow_back_ios_new, size:20,
                    color: Colors.white),
          ),
                SizedBox(height: 20,),
                Text("Your Result", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Container(
                  height: 550,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kcardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(height: 40,),
                        Expanded(child: Text(health, style: TextStyle(color:Colors.greenAccent, fontSize: 30, fontWeight: FontWeight.bold),)),
                        Spacer(),
                        Expanded(child: Text(result.toStringAsFixed(2), style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),)),
                        Spacer(),
                       Expanded(child: Text(text, style: TextStyle(color:Colors.white, fontSize:20,),))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Index()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kactionColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Re_calculate", style: TextStyle(color:Colors.white, fontSize: 25, )),
                  ),
                ),
              ],
          ),
          )

        );
  }

  final double result;
  final String health;
  final String text;

}
