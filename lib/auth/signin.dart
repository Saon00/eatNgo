import 'package:demo_01/components/signButton.dart';
import 'package:demo_01/components/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController username = TextEditingController();

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/login_bg.png')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Eat n Go",
                style: GoogleFonts.openSans(
                  fontSize: 50,
                  color: Colors.green,
                  shadows: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.red.shade50,
                      offset: Offset(3, 3),
                    )
                  ],
                )),
            Container(
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  Text("Sign in to continue",
                      style: GoogleFonts.raleway(
                          fontSize: 20, color: Colors.black)),

                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // enter email
                        MyTextFeild(
                          hinttext: "e-mail",
                          obsecuretext: false,
                          controller: username,
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        // enter password
                        MyTextFeild(
                            hinttext: "password",
                            obsecuretext: true,
                            controller: password),

                        const SizedBox(
                          height: 10,
                        ),

                        // sign in button
                        const SignButton(
                          onTap: signInUser,
                        ),
                      ],
                    ),
                  ),

                  // SignInButtonBuilder(
                  //   text: 'Get going with Email',
                  //   icon: Icons.email,
                  //   onPressed: () {
                  //     // _showButtonPressDialog(context, 'Email');
                  //   },
                  //   backgroundColor: Colors.blueGrey[700]!,
                  //   width: 220.0,
                  // ),
                  const SizedBox(height: 20),

                  SignInButton(
                    Buttons.Google,
                    text: "Sign up with Google",
                    onPressed: () {},
                  ),

                  SignInButton(
                    Buttons.Facebook,
                    text: "Sign up with Facebook",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void signInUser() {}
