import 'package:flutter/material.dart';
import 'package:kitabi/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'new_password.dart';
class VerifCode extends StatefulWidget {
  const VerifCode({ Key? key }) : super(key: key);

  @override
  State<VerifCode> createState() => _VerifCodeState();
}

class _VerifCodeState extends State<VerifCode> {
  @override
  
  

  
FocusNode _focusDigit1 = FocusNode();
  FocusNode _focusDigit2 = FocusNode();
  FocusNode _focusDigit3 = FocusNode();
  FocusNode _focusDigit4 = FocusNode();
  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _focusDigit1.dispose();
    _focusDigit2.dispose();
    _focusDigit3.dispose();
    _focusDigit4.dispose();

  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white, leading: IconButton(icon: Icon(Icons.arrow_back,),color: bluee,onPressed: (){},),)
    ,body: Padding(padding: EdgeInsets.only(left: 25),child: Column(children: [
      Align(
      alignment: Alignment.centerLeft,child:RichText(textAlign:TextAlign.start,text:TextSpan(
      children: [
       
        TextSpan(text:"\nVerification\n", style:TextStyle(color:bluee,fontSize: 30,fontWeight: FontWeight.bold, )),
        TextSpan(text: "\nWe’ve sent you the verification code on iyed******.com\n", style: TextStyle(color:bluee,fontSize: 16, )),
      ]
    ))), 
    Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.15,
        ),
        child: Container(
          margin: EdgeInsets.only(top: 30, bottom: 30),
          child: Row(
            children: [
              
             
              SizedBox(
                width: mediaQueryData.size.width * 0.013,
              ),
              CodeInput(
                focusNode0: null,
                focusNode1: _focusDigit1,
                focusNode2: _focusDigit2,
              ),
              SizedBox(
                width: mediaQueryData.size.width * 0.063,
              ),
              CodeInput(
                focusNode0: _focusDigit1,
                focusNode1: _focusDigit2,
                focusNode2: _focusDigit3,
              ),
              SizedBox(
                width: mediaQueryData.size.width * 0.063,
              ),
              CodeInput(
                focusNode0: _focusDigit2,
                focusNode1: _focusDigit3,
                focusNode2: _focusDigit4,
              ),
              SizedBox(
                width: mediaQueryData.size.width * 0.063,
              ),
              CodeInput(
                focusNode0: _focusDigit3,
                focusNode1: _focusDigit4,
                focusNode2: null,
              ),
            ],
          ),
        ),
      ),
    
    ElevatedButton( style: ElevatedButton.styleFrom(alignment:Alignment.center, fixedSize: Size(210, 45),primary:basic,shape:
                            RoundedRectangleBorder(
                               borderRadius : BorderRadius.circular(10),
                               
                               )),
                               child: Row(children: [Text("             CONTINUE          "), Align(alignment: Alignment.centerRight,child: SvgPicture.asset("assets/icons/continue.svg"))]), onPressed: (){
                                 Get.to(NewPass());
                               },),TextButton(
                  child: const Text(
                    'Re-Send Code',
                    style: TextStyle(color:basic, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  onPressed:(){},
                )],)
      
    ));
  }
}

class CodeInput extends StatelessWidget {
  final FocusNode? focusNode0;
  final FocusNode? focusNode1;
  final FocusNode? focusNode2;

  const CodeInput({
    Key? key,
    this.focusNode0,
    this.focusNode1,
    this.focusNode2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.103,
          child: TextField(
            focusNode: focusNode1,
            textAlign: TextAlign.center,
            maxLength: 1,
            onChanged: (str) {
              if (str.length == 1) {
                FocusScope.of(context).requestFocus(focusNode2);
              } else if (str.length == 0) {
                FocusScope.of(context).requestFocus(focusNode0);
              }
            },
            decoration: InputDecoration(
              hintText: "*",
              hintStyle: TextStyle(color: Colors.grey),
              counterText: "",
            ),
          ),
        ),
      ],
    );
  }
}
