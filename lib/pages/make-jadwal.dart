// ini gak tau mau dipake atau engga :<

import 'package:flutter/material.dart';

class BuatJadwalPage extends StatefulWidget {
  const BuatJadwalPage({super.key});

  @override
  State<BuatJadwalPage> createState() => _BuatJadwalPageState();
}

class DataJadwal {
    late String lokasi;
    late DateTime tanggal;

    DataJadwal (
        {required this.lokasi, required this.tanggal}
    );
}

List<DataJadwal> dataList = [];

class _BuatJadwalPageState extends State<BuatJadwalPage> {
    final _formKey = GlobalKey<FormState>();
    List<String> listLokasi = ['Lokasi A', 'Lokasi B', 'Lokasi C', 'Lokasi D', 'LOkasi E'];
    String? _lokasi;
    DateTime tanggal = DateTime.now();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Buat Jadwal Baru'),
            ),
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

                                ListTile(
                                    title: Text("${tanggal.day}/${tanggal.month}/${tanggal.year}"),
                                    leading: TextButton.icon(
                                        label: const Text('Tanggal'),
                                        icon: const Icon(Icons.calendar_month_outlined),
                                        onPressed: () {
                                        showDatePicker(
                                            context: context, 
                                            initialDate: DateTime.now(), 
                                            firstDate: DateTime(2021), 
                                            lastDate: DateTime(2100)
                                        ).then((tanggal) {
                                            setState(() {
                                            tanggal = tanggal!;
                                            });
                                        });
                                        },
                                    ),
                                ),

                                // TODO: tombol simpan
                            ]
                        )
                    )
                )
            )
        )
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