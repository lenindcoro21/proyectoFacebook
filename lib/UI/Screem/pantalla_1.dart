
import'package:flutter/material.dart';


class Pantalla_1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading:IconButton(
         icon: Icon(
           Icons.arrow_back,
           color:Colors.black,
           size:30
           ),
           onPressed: () {
             Navigator.pop(context);
           },
       
       ),
       
      ),

      body: Container(
         child: ListView(children:<Widget> [

           

           Container( 
             height: 320.0,
             width: 320.0,
             margin:EdgeInsets.only(top:15.0),
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.contain,
                 image: AssetImage("assets/img/mujer3.png"),

               ),
               borderRadius: BorderRadius.all(Radius.circular(10.0)),
               shape: BoxShape.rectangle,
             ),

                      
           ), 

           Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text("Relax Your Mind",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
           ),//Titulo

             Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text("Day episode",textAlign: TextAlign.center,style: TextStyle(fontSize: 22),),
            
           
           ), 
            Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text("",textAlign: TextAlign.center,style: TextStyle(fontSize: 22),),
            
           
           ), 
           
           Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Icon(
                      Icons.download_sharp,
                      color: Colors.green,
                      size: 24.0,
                     
                    ),
                    Icon(
                      Icons.audiotrack,
                      color: Colors.green,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.message,
                      color: Colors.green,
                      size: 36.0,
                    ),
                  ],
                )
                             

         ],
         ) 

         
      )
      
       
      
    ) ;
    
    
  }
  

} 



