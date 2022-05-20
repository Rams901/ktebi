import 'package:flutter/material.dart';
import 'package:kitabi/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../login.dart';
class NewPass extends StatelessWidget {
  const NewPass({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white, leading: IconButton(icon: Icon(Icons.arrow_back,),color: bluee,onPressed: (){},),)
    ,body: Padding(padding: EdgeInsets.only(left: 25),child: Column(children: [
      Align(
      alignment: Alignment.centerLeft,child:RichText(textAlign:TextAlign.start,text:TextSpan(
      children: [
       
        TextSpan(text:"\nSet New Password\n", style:TextStyle(color:bluee,fontSize: 30,fontWeight: FontWeight.bold, )),
        TextSpan(text: "\nCreate your new password for Kteb, make sure to re-type it exactly the same.\n", style: TextStyle(color:bluee,fontSize: 16, )),
      ]
    ))), 
    Container(padding:EdgeInsets.only(top: 15, bottom: 15, right: 15),child:TextFormField(obscureText: true,scrollPadding:EdgeInsets.all(5),cursorColor:basic,decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: basic2)),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: basic)),labelStyle: TextStyle(color: gray),labelText: 'Password',suffix: SvgPicture.asset("assets/icons/view_pass.svg")),
                   keyboardType: TextInputType.emailAddress, )),Container(padding:EdgeInsets.only(top: 15, bottom: 15, right: 15),child:TextFormField(obscureText: true,scrollPadding:EdgeInsets.all(5),cursorColor:basic,decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: basic2)),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: basic)),labelStyle: TextStyle(color: gray),labelText: 'Confirm Password',suffix: SvgPicture.asset("assets/icons/hide_pass.svg")),
                   keyboardType: TextInputType.name, )),ElevatedButton( style: ElevatedButton.styleFrom(alignment:Alignment.center, fixedSize: Size(210, 55),primary:basic,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               
                               )),
                               child: Row(children: [Text("             CONTINUE          "), Align(alignment: Alignment.centerRight,child: SvgPicture.asset("assets/icons/continue.svg"))]), onPressed: (){Get.to(login());},)
    ],)
      
    ));
  }
}
//Implementing the pop up screen when passwords match and the we update the password on the server.