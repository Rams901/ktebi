import 'package:flutter/material.dart';
import 'package:kitabi/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../signup/signup.dart';
import 'reset_pass/forgot_pass.dart';
import '../onBoarding/OnBoard1.dart';
class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Padding(padding: EdgeInsets.only(left: 25),child: Column(children: [Image.asset("assets/images/consulting.png", fit: BoxFit.fill),
     Align(
      alignment: Alignment.centerLeft,child: RichText(textAlign:TextAlign.start,text:TextSpan(
      children: [
        TextSpan(text: "\nWelcome Back\n", style: TextStyle(color:gray,fontSize: 20, )),
        TextSpan(text:"\nAccount Login", style:TextStyle(color:bluee,fontSize: 30,fontWeight: FontWeight.bold, )),
      ]
    ))), 
    Padding(padding: EdgeInsets.only(left: 60, top: 15, bottom: 15),child: Row(children: [Padding(padding: EdgeInsets.only(right:15),child:ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(170, 45),primary:Colors.white,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                              side: BorderSide(color: basic)
                               )),
                               child: Center(child: Row(children: [SvgPicture.asset(
            "assets/icons/google.svg",
           
          ),Text("  Login With Google",style: TextStyle(color: grayer, ),)])), onPressed: (){},)),
          ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(170, 45),primary:Colors.white,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               side: BorderSide(color: basic)
                               )),
                               child: Center(child: Row(children: [SvgPicture.asset(
            "assets/icons/apple.svg",
           
          ),Text("  Login With Apple",style: TextStyle(color: grayer, ),)
          ])), onPressed: (){},)],
          )
          ),
          RichText(text:TextSpan(text:"Or Login using Email", style: TextStyle(color: grayer, fontSize: 15)))
          ,
          Container(width: 420,padding: EdgeInsets.all(13), child: Column(children: [

                  TextFormField(cursorColor:basic,decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: basic2)),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: basic)),labelStyle: TextStyle(color: gray),labelText: 'Email',suffix: SvgPicture.asset("assets/icons/email.svg")),
                   keyboardType: TextInputType.emailAddress, ),
                  TextFormField(cursorColor:basic,obscureText: true,decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: basic2)),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:basic)),labelStyle: TextStyle(color: gray), labelText: 'Enter Password', suffix: SvgPicture.asset("assets/icons/view_pass.svg")),
                

                   keyboardType: TextInputType.name,),
                   Align(heightFactor:1.8 ,
      alignment: Alignment.centerRight,child: TextButton(child: RichText(text: TextSpan(text: "Forgot Password?", style: TextStyle(color: grayer, fontWeight: FontWeight.w300))),onPressed: (){Get.to(RestPass());},
      ))
    ,Row(children: [Padding(padding:EdgeInsets.only(right: 15) ,child:ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(220, 35),primary:basic,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               
                               )),
                               child: Text("Continue"), onPressed: (){Get.to(OnBoarding1());},)),
                               ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(150, 35),primary:whityy,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               
                               )), child:SvgPicture.asset(
            "assets/icons/fingerprint.svg",
           
          ) , onPressed: (){}),]
    ), ])),Row(
              children: <Widget>[
                const Text("Don't have an account?"),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color:basic2, fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  onPressed:(){Get.to(Signup());},
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
    ],
    )
    ));
  }
}