import 'package:donorin/pages/identity.dart';
import 'package:donorin/pages/signUp.dart';
import 'package:donorin/pages/welcome.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "../utilities/color.dart";
import "../utilities/theme.dart";
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:http/http.dart' as http;



class SignInPage extends StatefulWidget {
    @override
    State<SignInPage> createState() => _SignIn();
}

class _SignIn extends State<SignInPage> {
  final _formKeyLogin = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  void togglePasswordView() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  } 
  String username = "";
  String password1 = "";
  
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
                  key: _formKeyLogin,
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
                      onChanged: ((value) {
                        setState(() {
                          username = value;
                        });
                      })),
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
                      onChanged:(value) {
                        setState(() {
                          password1 = value; 
                        });
                      },
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
                    TextButton(onPressed: () async {
                      if(_formKeyLogin.currentState!.validate()){
                        final loginResponse = await request.login(
                          "http://127.0.0.1:8000/auth/login/"
                          , {
                            'username' : username,
                            'password' : password1
                          });
                          if(request.loggedIn){
                            _formKeyLogin.currentState!.reset();
                            if(loginResponse['data_field'] == false){
                              Navigator.push(
                              context
                              , 
                              // DUMMY DIRECT PAGE
                              MaterialPageRoute(builder: (context) => IdentitySubmitPage(username: loginResponse['user_name'])));
                            } else {
                              Navigator.push(
                              context
                              , 
                              // DUMMY DIRECT PAGE
                              MaterialPageRoute(builder: (context) => WelcomePage()));
                            }
                            
                          }
                          else {
                            showDialog(
                              context: context, 
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Alert'),
                                  content: Text('Password / username W'),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Close')),
                                  ],
                                );
                              });
                          }
                      } else {
                        // CONDITION FAILED
                        
                      }
                    }, child: Text("Sign In", style: btnTextSgn,),
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