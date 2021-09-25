import 'package:flutter/material.dart';

//CREANDO LA CLASE
class TextInput extends StatelessWidget {
  //constantes
  late final String hint;
  late final TextInputType inputType;
  late final TextEditingController controller;
  int maxLineas = 1;

  //constructor
  TextInput({
    Key? key,
    required this.hint,
    required this.inputType,
    required this.controller,
    required this.maxLineas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: TextFormField(
        maxLength: 50, //despliego cuanto texto pueden digitar
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.lightBlue[50],
            border: InputBorder.none,
            hintText: hint,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            //estilo del borde al estar dentro de el
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        controller: controller,
        keyboardType: TextInputType
            .visiblePassword, //metodo de control de info en vez de inputType
        maxLines: maxLineas,
        //estilo de visualizacion con fuente importada
        style: const TextStyle(
            fontSize: 20,
            color: Colors.black87,
            fontFamily: "Quantico",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}