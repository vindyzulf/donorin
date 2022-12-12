import 'package:flutter/material.dart';
import 'package:donorin/landing/page/landing.dart';
import 'package:donorin/landing/page/newsForm.dart';
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
                        title: const Text('Landing'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyLandingPage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('News Form'),
                        onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyNewsFormPage()),
                            );
                        },
                    ),
                ],
            ),
        );
    }
}