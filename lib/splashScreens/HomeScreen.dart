import 'package:flutter/material.dart';
import 'package:kitabi/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../signup/signup.dart';
import '../Login/login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
  
    return Scaffold(

  body: Container(
    
  decoration:BoxDecoration(color:Color((0xFFFFEFDD))),
  child:Column(children: [
 Center(child: Padding(padding: EdgeInsets.only(top:50),child: RichText(textAlign: TextAlign.center,
                     text: TextSpan(
         /*defining default style is optional */
            children: <TextSpan>[TextSpan(text: 'Kteb',
            style: TextStyle(color:basic,fontSize: 50,fontWeight: FontWeight.bold, )),
              TextSpan(
                    text: '.co', style: TextStyle(color:bluee,fontSize: 50,fontWeight: FontWeight.bold)),
            TextSpan(text: "\nWelcome to new application of Books.\nLet's read.", )],
              ))),
              // get a new container or find something else... try the other designs
                     ),
                     Expanded(child: Stack(alignment: Alignment.bottomCenter,clipBehavior: Clip.hardEdge,children: [Container(child:Image.asset("assets/images/image13.png"),
                    ),
                    ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(270, 35),primary:basic,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               
                               )),
                               child: new Text("Sign in"), onPressed: (){Get.to(login());},)]),flex: 3),Row(
              children: <Widget>[
                const Text("Don't have an account?"),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color:basic2, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  onPressed:(){
                    Get.to(Signup());
                    },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ])
)
  
  
  
  
  
  
  
  
  
  );}}