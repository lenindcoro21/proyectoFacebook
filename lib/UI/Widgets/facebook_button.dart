import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

//BOTON SI VA A TENER ACCION CUANDO SE PULSE
//CREANDO LA CLASE
class FacebookButton extends StatefulWidget {
  //declaro parametros para el alto y ancho del boton para la clase _GoogleButton
  double widthC = 0;
  double heightC = 0;
  late final String textC;

  // que pasa cuando se tapee, lo resuelve el constructor
  late final VoidCallback onPressed;

  FacebookButton({
    Key? key,
    required this.textC,
    required this.widthC,
    required this.heightC,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FacebookButton();
  }
}

//CLASE ANIDADA
class _FacebookButton extends State<FacebookButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
          margin: const EdgeInsets.only(top: 35),
          width: widget.widthC,
          height: widget.heightC,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: const LinearGradient(
                  colors: [Color(0xFF1A52C2), Color(0xff10904e)],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.7])),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              widget.textC,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}