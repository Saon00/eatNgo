import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignButton extends StatelessWidget {
  final Function()? onTap;

  const SignButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: Center(
          child: Text("Sign-in",
              style: GoogleFonts.josefinSans(
                  color: Colors.white, fontSize: 20)),
        ),
      ),
    );
  }
}
