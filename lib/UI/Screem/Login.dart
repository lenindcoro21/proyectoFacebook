import 'package:conectar_facebook/UI/Screem/Profile.dart';
import 'package:conectar_facebook/UI/Screem/pantalla_1.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:conectar_facebook/Bloc/bloc_user.dart';
import 'package:conectar_facebook/UI/Screem/profile.dart';
import 'package:conectar_facebook/UI/Widgets/text_input.dart';
import 'package:conectar_facebook/UI/Widgets/facebook_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

//CREANDO LA CLASE
class Login extends StatelessWidget {
  //constantes
  late BlocUser blocUser;
  final _controllerUsername = TextEditingController();
  final _controllerPassword = TextEditingController();

  // usando BlocProvider
  @override
  Widget build(BuildContext context) {
    blocUser = BlocProvider.of(context);
    return _controlSession();
  }

  Widget _controlSession() {
    return StreamBuilder(
        stream: blocUser.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return loginApp();
          } else {
            return Pantalla_1();
          }
        });
  }

  Widget loginApp() {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          height: 250,
          width: 250,
          margin: const EdgeInsets.only(top: 15.0),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: AssetImage("assets/img/login.png")),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle),
        ),

        Container(
          height: 40.0,
          margin: const EdgeInsets.only(top: 15.0),
          child: const Text(
            "LOGIN",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ), //CONTAINER PARA TITULO

        Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: TextInput(
              hint: "Username or Email",
              inputType: TextInputType.name,
              controller: _controllerUsername,
              maxLineas: 1),
        ), //CONTAINER PARA EL USERNAME

        Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: TextInput(
              hint: "Password",
              inputType: TextInputType.text,
              controller: _controllerPassword,
              maxLineas: 1),
        ), //CONTAINER PARA EL PASSWORD

        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Center(
            child: MaterialButton(
              minWidth: 100.0,
              height: 40.0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              onPressed: () {},
              color: Color(0xFF04DE5B),
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),

        Container(
          height: 20.0,
          margin: const EdgeInsets.only(top: 15.0),
          child: const Text(
            "or",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26),
          ),
        ),

        Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Center(
                child: FacebookButton(
                    textC: 'Login with Facebook',
                    widthC: 300.0,
                    heightC: 40.0,
                    onPressed: () {
                      blocUser.signIn();
                    })))
      ],
    ));
  }
}