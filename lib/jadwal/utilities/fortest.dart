import 'package:flutter/material.dart';
import 'package:donorin/jadwal/pages/make_jadwal.dart';
import 'package:donorin/jadwal/pages/history_page.dart';
import 'package:donorin/main.dart';

class DrawerBar extends StatelessWidget {
    const DrawerBar({super.key});

    @override
    Widget build(BuildContext context) {
        return Drawer(
            child: Column(
                children: [
                    ListTile(
                        title: const Text('Main'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Main')),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('Buat Jadwal'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const BuatJadwalPage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('History'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const HistoryPage()),
                            );
                        },
                    ),
                ],
            ),
        );
    }
}