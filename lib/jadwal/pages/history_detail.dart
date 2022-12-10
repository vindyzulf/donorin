// import 'dart:html';
// import 'package:flutter/material.dart';
// import 'package:donorin/jadwal/utilities/fortest.dart';
// import 'package:donorin/jadwal/model/history.dart';
// import 'package:donorin/jadwal/pages/history_page.dart';

// class HistoryDetailPage extends StatelessWidget {
//   final History history;
//   const HistoryDetailPage({super.key, required this.history});

//   @override
//   Widget build(BuildContext context) {
//     final tanggalHistory = Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Text(
//           history.tanggal,
//           style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
//           textAlign: TextAlign.center,
//         ));

//     final lokasiHistory = Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: Row(
//         children: [
//           const Text(
//             "Lokasi: ",
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//           ),
//           Text(
//             "${history.lokasi}",
//             style: const TextStyle(fontSize: 20),
//           )
//         ],
//       ),
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detail'),
//       ),
//       drawer: const DrawerBar(),
//       body: Column(
//         children: <Widget>[
//           tanggalHistory,
//           lokasiHistory,
//         ],
//       ),
//       persistentFooterButtons: [
//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.blue,
//             minimumSize: const Size.fromHeight(40),
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text(
//             'Back',
//             style: TextStyle(fontSize: 12),
//           ),
//         ),
//       ],
//     );
//   }
// }