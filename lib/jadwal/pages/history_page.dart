import 'dart:convert';
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
    ListTile makeListTile(History history) => ListTile(
      contentPadding:
      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      leading: Container(
        padding: const EdgeInsets.only(right: 12.0),
        child: const Icon(Icons.autorenew, color: Colors.white),
      ),
      title: Text(
        history.date,
      ),
      subtitle: Text(
        history.loc,
      ),
      // onTap: () {
      //   Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) =>
      //               HistoryDetailPage(history: history)));
      // },
    );

    Card makeCard(History history) => Card(
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
      ),
      drawer: const DrawerBar(),
      body: FutureBuilder(
          future: HistoryFetch().getHistoryFetch(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Belum ada data",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => makeCard(snapshot.data![index]));
              }
            }
          }),
    );
  }
}