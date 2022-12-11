import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';

import 'package:donorin/main.dart';
import 'package:donorin/landing/page/newsForm.dart';
import 'package:donorin/landing/utilities/theme.dart';

class MyLandingPage extends StatefulWidget {
    const MyLandingPage({super.key});

    @override
    State<MyLandingPage> createState() => _MyLandingPageState();
}

class _MyLandingPageState extends State<MyLandingPage> {
  final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
        return Scaffold(
          appBar: AppBar(
              //title: Text('Donorin', style: headWelcome),
              backgroundColor: Color(0xFFEB1D36),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.login),
                  tooltip: 'Sign In',
                  onPressed: () {},
                ),
              ],
          ),

          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  width: size.width * 0.9,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('donor.jpg'), fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text('Donorin',
                      style: headWelcome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                
                SizedBox(height: 30),
                Container(
                  child: Column(children: [
                    Text("Get to know Donorin", style: headText),
                  ]),
                ),

                SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: SizedBox(
                            width: 300,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEB1D36),
                                    ),
                                  ),
                                  Center(
                                    child: Text.rich(
                                      TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            style: textBoldDirect,
                                            text: "Book Jadwal\n\n",
                                          ),
                                          TextSpan(
                                            style: descriptionText,
                                            text: "Pemesanan jadwal menjadi lebih mudah dan praktis dengan temukan jadwal tempat atau lokasi donor darah terdekat di sekitar Anda.",
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: SizedBox(
                            width: 300,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEB1D36),
                                    ),
                                  ),
                                  Center(
                                    child: Text.rich(
                                      TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            style: textBoldDirect,
                                            text: "Berita Terkini\n\n",
                                          ),
                                          TextSpan(
                                            style: descriptionText,
                                            text: "Dapatkan berita terbaru mengenai ragam isu penting dalam dunia kesehatan serta informasi seputar kegiatan donor darah.",
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: SizedBox(
                            width: 300,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEB1D36),
                                    ),
                                  ),
                                  Center(
                                    child: Text.rich(
                                      TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            style: textBoldDirect,
                                            text: "Pantau Kesehatan\n\n",
                                          ),
                                          TextSpan(
                                            style: descriptionText,
                                            text: "Cek serta pantau kesehatan Anda melalui hasil tes screening kesehatan, seperti tensi, hemogoblin, dan lainnya.",
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 30),
                Container(
                  child: Column(children: [
                    Text("What you need before Donorin", style: headText),
                  ]),
                ),

                
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget> [
                      Expanded(
                        child: ListView.builder(
                          itemCount: dataList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(dataList[index][0], style: headText),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(dataList[index][1], style: btnTextSgn),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
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