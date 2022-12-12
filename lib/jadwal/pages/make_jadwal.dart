// ini gak tau mau dipake atau engga :<

import 'package:flutter/material.dart';
import 'package:donorin/jadwal/utilities/fortest.dart';
import 'package:donorin/jadwal/pages/history_page.dart';

class BuatJadwalPage extends StatefulWidget {
  const BuatJadwalPage({super.key});

  @override
  State<BuatJadwalPage> createState() => _BuatJadwalPageState();
}

class DataJadwal {
    late String lokasi;
    late String tanggal;

    DataJadwal (
        {required this.lokasi, required this.tanggal}
    );
}

List<DataJadwal> dataList = [];

class _BuatJadwalPageState extends State<BuatJadwalPage> {
    final _formKey = GlobalKey<FormState>();
    List<String> listLokasi = ['PMI Provinsi DKI Jakarta', 'PMI Kota Jakarta Utara', 'PMI Kota Jakarta Pusat', 'PMI Kota Jakarta Timur', 'PMI Kota Jakarta Barat', 'PMI Kota Jakarta Selatan'];
    String? _lokasi;
    String tanggal = "30-12-2022";

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Buat Jadwal Baru'),
                backgroundColor: Color(0xFFEB1D36),
            ),
            drawer: const DrawerBar(),
            body:Form(
                key:_formKey,
                child: SingleChildScrollView(
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                            children: [
                                DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        items: listLokasi.map ((String pilihLokasi) {
                                            return DropdownMenuItem(
                                                value: pilihLokasi,
                                                child: Text(pilihLokasi),
                                            );
                                        }).toList(),
                                        hint: const SizedBox(
                                            width: 150,
                                            child: Text(
                                                "Pilih Lokasi",
                                                style: TextStyle(color: Colors.grey),
                                                textAlign: TextAlign.center,
                                            ),
                                        ),
                                        onChanged: (String? newValue) {
                                            setState(() {
                                                _lokasi = newValue!;
                                            });
                                        },
                                        value: _lokasi,
                                        icon: const Icon(Icons.arrow_drop_down),
                                    )
                                ),

                                Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'DD-MM-YYYY (masukkan tanggal yang valid sesuai format)',
                                            labelText: 'Tanggal',
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                            ),
                                            onChanged: (String? value) {
                                                setState(() {
                                                    tanggal = value!;
                                                });
                                            },
                                            onSaved: (String? value) {
                                                setState(() {
                                                    tanggal = value!;
                                                });
                                            },
                                            validator: (String? value) {
                                                if (value==null || value.isEmpty) {
                                                    return 'Tanggal tidak boleh kosong';
                                                } 
                                                return null;
                                        },
                                    ),
                                ),

                                // TODO: tombol simpan
                                Container(
                                    padding: const EdgeInsets.only(top: 30),
                                    alignment: Alignment.bottomCenter,
                                    child: TextButton(
                                    child: const Text(
                                        'Simpan',
                                        style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Color(0xFFEB1D36)),
                                    ),
                                        onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                            if (tanggal == null || tanggal == '') {
                                            showDialog(
                                                context: context, 
                                                builder: (context) {
                                                return Dialog(
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                                                    elevation: 10,
                                                    child: ListView(
                                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                                    shrinkWrap: true,
                                                    children: <Widget>[
                                                        const Center(child: Text('Tanggal'),),
                                                        const SizedBox(height: 25,),
                                                        TextButton(
                                                        onPressed: () {
                                                            Navigator.pop(context);
                                                        }, 
                                                        child: const Text('Buat Jadwal'),
                                                        ),
                                                    ],
                                                ),
                                            );
                                            },
                                        );
                                        }
                                        else {
                                            onPressed(context);
                                        }
                                    }   
                                },
                                    ),
                                )
                            ]
                        )
                    )
                )
            )
        );
    }
    
    onPressed(BuildContext context) {
        var data = DataJadwal(lokasi: _lokasi!, tanggal: tanggal);
        dataList.add(data);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HistoryPage()),
        );
    }
}