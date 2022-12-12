import 'dart:convert';
import 'package:donorin/pages/signin.dart';
import 'package:flutter/material.dart';
import 'package:donorin/jadwal/model/history_model.dart';
import 'package:donorin/jadwal/pages/history_detail.dart';
import 'package:donorin/jadwal/fetch.dart';
import 'package:donorin/jadwal/model/base_response.dart';
import 'package:donorin/jadwal/utilities/fortest.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});



  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
    @override
    Widget build(BuildContext context) {
        // TODO
    ListTile makeListTile(Jadwal history) => ListTile(
      contentPadding:
      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      leading: Container(
        padding: const EdgeInsets.only(right: 12.0),
        child: const Icon(Icons.autorenew, color: Colors.white),
      ),
      title: Text(
        history.fields.date,
      ),
      subtitle: Text(
        history.fields.loc,
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    HistoryDetailPage(history: history)));
      },
    );

    Card makeCard(Jadwal history) => Card(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 1),
      elevation: 4,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.redAccent.shade400,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Container(
        child: makeListTile(history),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        backgroundColor: Color(0xFFEB1D36),
      ),
      drawer: const DrawerBar(),
      body: FutureBuilder<ResponseModel>(
          future: HistoryFetch().getHistoryFetch(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.hasData) {
                ResponseModel data = snapshot.data;
                if (data.data.isNotEmpty) {
                  return ListView.builder(
                      itemCount: data.data.length,
                      itemBuilder: (_, index) =>
                          makeCard(data.data[index]));
                } else {
                  return const Center(
                    child:
                    Text(
                      "Belum ada riwayat donor",
                      style:
                      TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  );
                }
              } else {
                return Column(
                  children: const [
                    Text(
                      "Belum ada riwayat donor",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              }
            }
          }),
    );
  }
}