import 'package:donorin/pages/welcome.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "../utilities/color.dart";
import "../utilities/theme.dart";
import '../pages/signIn.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:http/http.dart' as http;


class IdentitySubmitPage extends StatefulWidget {
  var username;
  IdentitySubmitPage ({ Key? key, required this.username});

  @override
  State<IdentitySubmitPage> createState() => _IdentitySubmit();
}

class _IdentitySubmit extends State<IdentitySubmitPage> {
  final _formKeyIdentity = GlobalKey<FormState>();
  String fullName = "";
  String blood_group = "";
  int phone_number = 0;
  String birth_date = "";
  String province = "";
  String city = "";

  String jenisKelamin = 'Pria';
  List<String> listKelasPBP = ['Pria', 'Wanita'];

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
                    key: _formKeyIdentity,
                    child: SingleChildScrollView(
                      child: Column(
                      children: [
                        TextFormField(
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            enabled: false,
                            hintText: widget.username,
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
                          onChanged: (value) {
                            setState(() {
                              fullName = value;
                            });
                          },
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
                          onChanged: (value) {
                            setState(() {
                              blood_group = value;
                            });
                          },
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
                          onChanged: (value) {
                            setState(() {
                              phone_number = int.parse(value);
                            });
                          },
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
                          onChanged: (value) {
                            setState(() {
                              birth_date = value;
                            });
                          },
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            hintText: "Birth Date (dd/mm/yyyy)",
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
                          onChanged: (value) {
                            setState(() {
                              province = value;
                            });
                          },
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
                        ),
                        SizedBox(height: 22,),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              city = value;
                            });
                          },
                          style: GoogleFonts.poppins(color: whiteColor),
                          decoration: InputDecoration(
                            hintText: "City",
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
                    ListTile(
                      leading: const Icon(Icons.class_),
                      title: const Text(
                          'Jenis Kelamin',
                      ),
                      trailing: DropdownButton(
                          value: jenisKelamin,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: listKelasPBP.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                          );
                          }).toList(),
                          onChanged: (String? newValue) {
                          setState(() {
                              jenisKelamin = newValue!;
                          });
                          },
                      ),
                      ),
                    Spacer(),
                  Column(
                    children: [
                      TextButton(onPressed: () async {  
                        if(_formKeyIdentity.currentState!.validate()){

                          final response = await request.post(
                            "http://127.0.0.1:8000/auth/information-user/"
                            , {
                              'username' : widget.username,
                              'full_name': fullName,
                              'blood_group' : blood_group,
                              'phone_number': phone_number.toString(),
                              'birth_date' : birth_date,
                              'province' : province,
                              'gender' : jenisKelamin,
                              'city' : city,
                            });
                          if(response['status'] == true){
                            Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => WelcomePage(),
                            ),);
                          }
                      } else {
                        // CONDITION FAILED
                        showDialog(
                              context: context, 
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Failed'),
                                  content: Text('Your data not valid'),
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
                      }, child: Text("Submit", style: btnTextSgn,),
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

// routes: { "/login": (BuildContext context) => SignInPage(), },