import 'package:flutter/material.dart';
import 'package:donorin/pages/user_dashboard.dart';
import 'package:donorin/common/constants.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    backgroundColor: redColor,
    child: Column(
      children: [
        // Menambahkan clickable menu
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: Image.asset(
            'DonorinLogo.png',
            width: 50,
            height: 50,
          ),
          onTap: () {
            // Navigator.pushReplacement(context,
            //     MaterialPageRoute(builder: (context) => const MyLandingPage()));
          },
        ),
        const SizedBox(
          height: 15,
        ),
        Card(
          color: darkRedColor,
          child: ListTile(
            title: Text(
              'User Dashboard',
              style: myTextTheme.bodyText1,
              textAlign: TextAlign.justify,
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const UserDashboardPage()),
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          color: darkRedColor,
          child: ListTile(
            title: Text(
              'Date Booking',
              style: myTextTheme.bodyText1,
              textAlign: TextAlign.justify,
            ),
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => const BuatJadwalPage()),
              // );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          color: darkRedColor,
          child: ListTile(
            title: Text(
              'History',
              style: myTextTheme.bodyText1,
              textAlign: TextAlign.justify,
            ),
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => const HistoryPage()),
              // );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          color: darkRedColor,
          child: ListTile(
            title: Text(
              'News Form',
              style: myTextTheme.bodyText1,
              textAlign: TextAlign.justify,
            ),
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => const MyNewsFormPage()),
              // );
            },
          ),
        ),
        const Spacer(),
        const Text(
          "© 2022 Donorin",
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
