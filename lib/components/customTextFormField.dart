import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String campo;
  final String dica;
  final TextEditingController controlador;
  const CustomTextFormField({super.key, required this.campo, required this.dica, required this.controlador});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,

      decoration: InputDecoration(
        fillColor: Colors.white,
        labelText: '$campo',
        hintText: '$dica',
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2.0)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0)
        ),
      ),
    );
  }
}
