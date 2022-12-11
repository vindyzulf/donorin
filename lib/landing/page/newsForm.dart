import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:donorin/main.dart';

import 'package:donorin/landing/page/landing.dart';
import 'package:donorin/landing/utilities/theme.dart';

import 'package:donorin/landing/utilities/drawerTest.dart';

var dataList = [];

class MyNewsFormPage extends StatefulWidget {
    const MyNewsFormPage({super.key});

    @override
    State<MyNewsFormPage> createState() => _MyNewsFormPageState();
}

class _MyNewsFormPageState extends State<MyNewsFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  String _deskripsi = "";

  var _judulCon = TextEditingController();
  var _deskripsiCon = TextEditingController();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                //title: Text('Add News', style: headWelcome),
                backgroundColor: Color(0xFFEB1D36),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ),
              ),
            ),
            drawer: const DrawerBar(),
            
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      
                      SizedBox(height: 30),
                      Container(
                        child: Column(children: [
                          Text("Add your news here", style: headText),
                        ]),
                      ),
                      SizedBox(height: 30),

                      //JUDUL
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Title",
                                // Menambahkan circular border agar lebih rapi
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            // Menambahkan behavior saat nama diketik 
                            onChanged: (String? value) {
                                setState(() {
                                    _judul = value!;
                                });
                            },
                            // Menambahkan behavior saat data disimpan
                            onSaved: (String? value) {
                                setState(() {
                                    _judul = value!;
                                });
                            },
                            // Validator sebagai validasi form
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                    return 'Title must be filled';
                                }
                                return null;
                            },
                        ),
                      ),

                    // DESKRIPSI
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Description",
                                // Menambahkan circular border agar lebih rapi
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                ),
                            ),
                            // Menambahkan behavior saat nama diketik 
                            onChanged: (String? value) {
                                setState(() {
                                    _deskripsi = value!;
                                });
                            },
                            // Menambahkan behavior saat data disimpan
                            onSaved: (String? value) {
                                setState(() {
                                    _deskripsi = value!;
                                });
                            },
                            // Validator sebagai validasi form
                            validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                    return 'Description must be filled';
                                }
                                return null;
                            },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //BUTTON SIMPAN
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, 
            floatingActionButton: Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFEB1D36)),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        dataList.add([_judul, _deskripsi]);
                        _judulCon.clear();
                        _deskripsiCon.clear();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 15,
                              child: Container(
                                child: ListView(
                                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    Center(child: Text('News added')),
                                    SizedBox(height: 20),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Back'),
                                    ), 
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
        );
    }
}
