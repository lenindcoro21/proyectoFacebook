/*import'package:flutter/material.dart';
import 'package:conectar_facebook/UI/Widgets/text_input.dart';

class Profile extends StatelessWidget{
  final _controllerName= TextEditingController();
  final _controllerHobbies= TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        child: ListView(children: <Widget>[
          Container(
            height: 250.0,
            width: 250.0,
            margin: EdgeInsets.only(top:15.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("assets/img/camara.png"),
                 ),
                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
                 shape: BoxShape.rectangle,
            ),
            ),//Foto
            Container(height: 40.0,
            margin: EdgeInsets.only(top:15.0),
            child: Text("Profile",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),),//Titulo
            Container(margin: EdgeInsets.only(top:15.0),
            child: TextInput(hintText: "Name",inputType: TextInputType.name,controller: _controllerName,maxLines: 1 ,hint: 'Name')
            ),//Nombre
             Container(margin: EdgeInsets.only(top:15.0),
            child: TextInput(hintText: "hobbies and interests",inputType: TextInputType.text,
            controller: _controllerHobbies,maxLines: 6, hint: 'Hobbies and interest')),//Hobbies
            Container(
              child: Center(child: MaterialButton(minWidth: 100.0,height: 40.0,onPressed: (){},
              color: Colors.lightBlue,
              child: Text('Save',style: TextStyle(color: Colors.white)
              ),),),
            )
        ],)
      )
    );
  }}*/