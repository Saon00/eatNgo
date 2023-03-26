import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFeild extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obsecuretext;

  const MyTextFeild(
      {Key? key,
      required this.hinttext,
      required this.obsecuretext, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: GoogleFonts.josefinSans(color: Colors.grey.shade500),
        fillColor: Colors.grey.shade100,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
      ),
      obscureText: obsecuretext,
    );
  }
}
