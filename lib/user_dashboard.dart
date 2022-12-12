import 'package:donorin/common/constants.dart';
import 'package:flutter/material.dart';

class UserDashboardPage extends StatelessWidget {
  const UserDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'DonorinLogo.png',
          width: 50,
          height: 50,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              mainAxisExtent: 175),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: redColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Summaries :",
                    style: myTextTheme.headline3,
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: darkRedColor,
              ),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Text(
                    "Total Donor",
                    style: myTextTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "11",
                    style: myTextTheme.bodyText2,
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: darkRedColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Text(
                    "Screening Result",
                    style: myTextTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Lolos",
                    style: myTextTheme.bodyText2,
                  )
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: redColor,
                ),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const BuatJadwalPage))
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: warmButtonColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        textStyle: heading2.copyWith(
                            color: blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 20)),
                    child: const Text("Donor Now!"),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
