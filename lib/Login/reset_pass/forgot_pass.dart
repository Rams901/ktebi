import 'package:flutter/material.dart';
import 'package:kitabi/Login/reset_pass/verification.dart';
import 'package:kitabi/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class RestPass extends StatelessWidget {
  const RestPass({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white, leading: IconButton(icon: Icon(Icons.arrow_back,),color: bluee,onPressed: (){},),)
    ,body: Padding(padding: EdgeInsets.only(left: 25),child: Column(children: [
      Align(
      alignment: Alignment.centerLeft,child:RichText(textAlign:TextAlign.start,text:TextSpan(
      children: [
       
        TextSpan(text:"\nReset Password\n", style:TextStyle(color:bluee,fontSize: 30,fontWeight: FontWeight.bold, )),
        TextSpan(text: "\nPlease enter your email to receive a linkto create a\nnew password via email.\n", style: TextStyle(color:bluee,fontSize: 16, )),
      ]
    ))), 
    Container(padding:EdgeInsets.only(top: 15, bottom: 15, right: 15),child:TextFormField(scrollPadding:EdgeInsets.all(5),cursorColor:basic,decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: basic2)),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: basic)),labelStyle: TextStyle(color: gray),labelText: 'Email',prefix: SvgPicture.asset("assets/icons/email.svg")),
                   keyboardType: TextInputType.emailAddress, )),ElevatedButton( style: ElevatedButton.styleFrom(alignment:Alignment.center, fixedSize: Size(210, 45),primary:basic,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               
                               )),
                               child: Row(children: [Text("             CONTINUE          "), Align(alignment: Alignment.centerRight,child: SvgPicture.asset("assets/icons/continue.svg"))]), onPressed: (){
                                Get.to(VerifCode());},)
    ],)
      
    ));
  }
}