import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "../utilities/color.dart";
import "../utilities/theme.dart";
import '../pages/signIn.dart';


class IdentitySubmitPage extends StatefulWidget {
    @override
    State<IdentitySubmitPage> createState() => _IdentitySubmit();
}

class _IdentitySubmit extends State<IdentitySubmitPage> {
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
                          onTap: () => {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => SignInPage()),
                              )
                          },
                          child: Image.asset('back_white.png', height:37, width: 37,)
                        ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              SizedBox(height: 22),
                              Text("Enter Your Identity", style: headWelcome,),
                              SizedBox(height: 5,),
                              Text("With your...", style: descriptionSign,)
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
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            hintText: "Full Name",
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
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            hintText: "Blood Group",
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
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            hintText: "Phone Number",
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
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            hintText: "Birth Date ()",
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
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            hintText: "Province",
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
                      TextButton(onPressed: () => {}, child: Text("Submit", style: btnTextSgn,),
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