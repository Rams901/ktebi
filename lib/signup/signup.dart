import 'package:flutter/material.dart';
import 'package:kitabi/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Login/login.dart';
import 'package:get/get.dart';
class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Padding(padding: EdgeInsets.only(left: 25),child: Column(children: [Image.asset("assets/images/signup.png", fit: BoxFit.fill),
     Align(
      alignment: Alignment.centerLeft,child: RichText(textAlign:TextAlign.start,text:TextSpan(
      children: [
        TextSpan(text: "\nJOIN OUR COMMUNITY", style: TextStyle(color:gray,fontSize: 15, )),
        TextSpan(text:"\nCreate Account", style:TextStyle(color:bluee,fontSize: 30,fontWeight: FontWeight.bold, )),
      ]
    ))), 
    Padding(padding: EdgeInsets.only(top: 20, bottom: 10, left: 35),child: Row(children: [Padding(padding: EdgeInsets.all(13),child:ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(180, 45),primary:Colors.white,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                              side: BorderSide(color: basic)
                               )),
                               child: Center(child: Row(children: [SvgPicture.asset(
            "assets/icons/google.svg",
           
          ),Text(" Sign up With Google",style: TextStyle(color: grayer, ),)])), onPressed: (){},)),
          ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(180, 45),primary:Colors.white,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               side: BorderSide(color: basic)
                               )),
                               child: Center(child: Row(children: [SvgPicture.asset(
            "assets/icons/apple.svg",
           
          ),Text("  Sign up With Apple",style: TextStyle(color: grayer, ),)
          ])), onPressed: (){},)],
          )
          ),
          RichText(text:TextSpan(text:"Or sign up using Email", style: TextStyle(color: grayer, fontSize: 15)))
          ,
          Container(width: 420,padding: EdgeInsets.all(13), child: Column(children: [
                  TextFormField(cursorColor:basic,decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: basic2)),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: basic)),labelStyle: TextStyle(color: gray),labelText: 'Username',suffix: SvgPicture.asset("assets/icons/person.svg")),
                   keyboardType: TextInputType.name, ),
                  Padding(padding: EdgeInsets.only(top: 10, bottom: 10),child:TextFormField(cursorColor:basic,decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: basic2)),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: basic)),labelStyle: TextStyle(color: gray),labelText: 'Email',suffix: SvgPicture.asset("assets/icons/email.svg")),
                   keyboardType: TextInputType.emailAddress, )),
                  TextFormField(cursorColor:basic,obscureText: true,decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: basic2)),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: basic)),labelStyle: TextStyle(color: gray), labelText: 'Enter Password', suffix: SvgPicture.asset("assets/icons/view_pass.svg")),
                

                   keyboardType: TextInputType.name,),
                   
    Row(children: [Padding(padding:EdgeInsets.only(right: 15) ,child:ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(220, 45),primary:basic,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               
                               )),
                               child: Row(children: [Text("Continue"),]), onPressed: (){},)),
                               ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(150, 45),primary:whityy,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               
                               )), child:SvgPicture.asset(
            "assets/icons/fingerprint.svg",
           
          ) , onPressed: (){}),]
    ), ])),Row(
              children: <Widget>[
                const Text("Already a Team Member"),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color:basic2, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  onPressed:(){Get.to(login());},
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
    ],
    )
    ));
  }
}