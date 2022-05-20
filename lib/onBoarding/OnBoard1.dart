import 'package:flutter/material.dart';
import 'package:kitabi/constant.dart';
import 'package:kitabi/onBoarding/GetStarted.dart';
import 'package:get/get.dart';

class OnBoarding1 extends StatefulWidget {

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
   


  @override
  Widget build(BuildContext context) {
    final  PageController controller = PageController();

    return Scaffold(

appBar: 
       AppBar(
         backgroundColor: Colors.white,elevation: 0,
        leading:Padding(
          padding: const EdgeInsets.all(6.0),
          child: ClipRRect(
      
          child:
           CircleAvatar(backgroundColor: Color(0xFFFFEFDD),
   minRadius: 50,
    maxRadius: 65,   
     child: ClipRRect(
      
          child: 
           IconButton(
             
              icon: const Icon(Icons.arrow_back,size: 26,color:Colors.black,), onPressed: () {  },),
                      borderRadius: BorderRadius.circular(30.0),
                      

           ))),
        ),

        actions:<Widget>[
         
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextButton(child: Text("Skip", style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize:18),),onPressed:(){
              Get.to(OnBoarding2());
            } ,)
          ),
         
         
  ],
         
),


     
   body: 
   
   PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children:  <Widget>[
        
      
    
   
   
   Container(
       decoration:BoxDecoration(color:Colors.white),

     child:Column(children: [
      Padding(
        padding: const EdgeInsets.only(top:12.0),
        child: Image.asset("assets/images/image 14.png" , width: 420,height: 350,),
      ),

      Padding(
        padding: const EdgeInsets.only(top:58.0),
        child: Text("  Only Books can help you " , style:TextStyle(color:Color(0xFF1E1F4B),fontSize: 23,fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("    Books can help you to increase your \n            knowledge and become more \n                        successfully." ,style: TextStyle(color:Color(0xFF1E1F4B),fontSize: 16 , fontWeight: FontWeight.w400
        ),),
      ),


 Padding(
   padding: const EdgeInsets.only(top:65.0),
   child: Container(
     width: 160,
             decoration: BoxDecoration(
               border: Border(
                 bottom: BorderSide(color: Color(0xFFE9ECEF),width: 5.5),
               ),
             ),
           ),
 ) 



     ],)
   ),
   
   
      GestureDetector(onHorizontalDragDown: (details){Get.to(OnBoarding2());},child: Container(
       decoration:BoxDecoration(color:Colors.white),

     child:Column(children: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset("assets/images/image 15.png" , width: 420,height: 350,),
      ),

      Padding(
        padding: const EdgeInsets.only(top:58.0),
        child: Text("  Learn Smartly " , style:TextStyle(color:Color(0xFF1E1F4B),fontSize: 23,fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("     It’s 2022 and it’s time to learn every\n quickly and smartly. All books are storage\n in cloud and you can access all of them \n                from your laptop or PC." ,style: TextStyle(color:Color(0xFF1E1F4B),fontSize: 16 , fontWeight: FontWeight.w400
        ),),
      ),
      Padding(
   padding: const EdgeInsets.only(top:35.0),
   child: Container(
     width: 160,
             decoration: BoxDecoration(
               border: Border(
                 bottom: BorderSide(color: Color(0xFFE9ECEF),width: 5.5),
               ),
             ),
           ),
 ) 

   
   
   ]
   
   
   
   )
   
   
   
   
   
   
   
   
   ))])
   
   
   
   
   );}}