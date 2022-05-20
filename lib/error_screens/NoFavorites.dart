import 'package:flutter/material.dart';
import 'package:kitabi/constant.dart';

class NoFav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
  
    return Scaffold(
   bottomNavigationBar: null,

  body: Container(
  decoration:BoxDecoration(color:Colors.white),
  child:Column(children: [
            // child: 
            Center(
               child:
               Padding(
                 padding: const EdgeInsets.only(top:48.0),
                 child: Image.asset("assets/images/nofav.png",width: 300,height: 300,),
               ),),
               Text("No Favorites",style:TextStyle(color:bluee,fontSize: 23,fontWeight: FontWeight.bold)),
               Padding(
                 padding: const EdgeInsets.only(top:6.0),
                 child: Text("You can add an item to your favourites by\n clicking “Star Icon”",style:TextStyle(color:gray,fontSize: 20,fontWeight: FontWeight.w500)),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:28.0),
                 child: ElevatedButton(
                   
              onPressed: () {},
              style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(basic),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.green),
                     minimumSize: MaterialStateProperty.all(Size(150, 45)),

                    ),
                    

              child: Text(' Go  Back',style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
    ),
               ),
               
                Expanded(child: Container(
                  
              decoration: BoxDecoration(
                  gradient:LinearGradient(
                    colors: [ Colors.white,Color(0xFFFEBD82)],
                    end: Alignment(0, 1),
                    begin: Alignment(0, -0.1),
                    
                  ),)
              ),)
               
 ] )
  )
  );

  
      
      
      
          
  }}