import 'package:alvas_mangment/widgets/buttons.dart';
import 'package:alvas_mangment/widgets/text_feild.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final TextEditingController _EmailController=TextEditingController();
  final TextEditingController _PasswordContrller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 5),
              Center(
                child: Text("Login",
                style: GoogleFonts.varelaRound(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset("assets/alvas_logo.png")),
              Feild(
                name: "email",
                icon: Icons.email_outlined,
                controller: _EmailController,
                errorMessage: null,
              ),
              Feild(
                name: "Password",
                  hideText: true,
                  icon: Icons.password,
                  errorMessage: null,
                  controller: _PasswordContrller,
                  passwordIcon: Icons.remove_red_eye_rounded,
                ),
              Align(
                alignment: Alignment(0.8, 0),
                child: Text("Forgot password",style: GoogleFonts.varelaRound(color: Colors.blue),),
              ),
              Buttons(
               colors:Colors.orange, 
               font: "Login", 
               fontColor: Colors.white, 
               onpressed: (){
                Navigator.pushNamed(context, '/homepage');
               }
              ),
              RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "New User?",
                        style: GoogleFonts.varelaRound(color: Colors.orange),
                      ),
                      TextSpan(
                          text: "\tRegister",
                          style: GoogleFonts.varelaRound(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushNamed(context, '/register'),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}