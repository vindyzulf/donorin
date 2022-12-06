import 'package:donorin/pages/signUp.dart';
import 'package:donorin/pages/welcome.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "../utilities/color.dart";
import "../utilities/theme.dart";


class SignInPage extends StatefulWidget {
    @override
    State<SignInPage> createState() => _SignIn();
}

class _SignIn extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            
            backgroundColor: Color(0xFFEB1D36),
            body: Padding(padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => WelcomePage(),
                            ),
                          );
                          },
                          child: Image.asset('back_white.png', height:37, width: 37,)
                        ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              SizedBox(height: 22),
                              Text("Let's sign you in", style: headWelcome,),
                              SizedBox(height: 5,),
                              Text("Welcome back.\nYou have been miseed.", style: descriptionSign,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                      children: [
                        TextFormField(
                          
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: GoogleFonts.poppins(color: Color(0xffEFEFEF)),
                            fillColor: whiteColor,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: whiteColor, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: whiteColor,
                                width: 1.0
                              ),
                            ),
                        ),
                        ),
                        SizedBox(height: 22,),
                        TextFormField(
                          obscureText: true,
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: GoogleFonts.poppins(color: Color(0xffEFEFEF)),
                            fillColor: whiteColor,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: whiteColor, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: whiteColor,
                                width: 1.0
                              ),
                            ),
                        ),
                        )
                      ],
                    )),),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        child: Align(alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("Don't have an account? ", style: descriptionText,), 
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ),
                               );
                              },
                              child: Text("Register", style: textBoldDirect),
                            )],),
                        )
                      ),
                      SizedBox(height: 10,),
                      TextButton(onPressed: () => {}, child: Text("Sign In", style: btnTextSgn,),
                          style: TextButton.styleFrom(
                            backgroundColor: whiteColor,
                            minimumSize:  Size.fromHeight(40),
                            shape: RoundedRectangleBorder( // <--- use this
                              borderRadius: BorderRadius.all(
                                Radius.circular(28),
                              ),
                            ), 
                          )
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
    }
}