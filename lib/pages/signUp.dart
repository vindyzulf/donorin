import 'package:donorin/pages/signIn.dart';
import 'package:donorin/pages/welcome.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "../utilities/color.dart";
import "../utilities/theme.dart";
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:http/http.dart' as http;


class SignUpPage extends StatefulWidget {
    @override
    State<SignUpPage> createState() => _SignUp();
}

class _SignUp extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String username = "";
  String password1 = "";
  String password2 = "";

  bool isPasswordVisible = false;
    void togglePasswordView() {
      setState(() {
        isPasswordVisible = !isPasswordVisible;
      });
    } 
    @override
    Widget build(BuildContext context) {
      final request = context.watch<CookieRequest>();
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
                          onTap: () {
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
                              Text("Register your account.", style: headWelcome,),
                              SizedBox(height: 5,),
                              Text("Make happiness", style: descriptionSign, textAlign: TextAlign.start,)
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
                          onChanged: ((value) {
                            setState(() {
                              username = value;
                            });
                          }),
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
                          onChanged: ((value) {
                            setState(() {
                              password1 = value;
                            });
                          }),
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
                        ),
                        SizedBox(height: 22,),
                        TextFormField(
                          onChanged: ((value) {
                            setState(() {
                              password2 = value;
                            });
                          }),
                          obscureText: true,
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            hintText: "Confirmation password",
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
                                  builder: (context) => SignInPage(),
                                ),
                            );
                              },
                              child: Text("Sign In", style: textBoldDirect),
                            )],),
                        )
                      ),
                      SizedBox(height: 10,),
                      TextButton(onPressed: () async{
                        if (_formKey.currentState!.validate()) {
                              final response = await request.post(
                                  "http://127.0.0.1:8000/auth/register/",
                                  {
                                    "username": username,
                                    "password1": password1,
                                    "password2": password2,
                                  });
                                if(response["status"] == true){
                                  showDialog(
                                    context: context, 
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Success'),
                                        content: Text('Registered in Donorin'),
                                        actions: <Widget>[
                                          TextButton(
                                              onPressed: () {
                                                MaterialPageRoute(builder: (context) => SignInPage());
                                              },
                                              child: Text('Close')),
                                        ],
                                      );
                                    });
                                } else {
                                  showDialog(
                                    context: context, 
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Allert'),
                                        content: Text('Your username was used or your password not match'),
                                        actions: <Widget>[
                                          TextButton(
                                              onPressed: () {
                                                MaterialPageRoute(builder: (context) => SignUpPage());
                                              },
                                              child: Text('Close')),
                                        ],
                                      );
                                    });
                                }
                            }
                      }, child: Text("Register", style: btnTextSgn,),
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