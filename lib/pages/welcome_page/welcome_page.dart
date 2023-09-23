import 'package:abac_challenge/main.dart';
import 'package:abac_challenge/pages/identify_car_page/identify_car_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = 'welcome-page';

  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.1),
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Text(
                        'Bine\nați\nvenit !',
                        style: TextStyle(
                            color: colors.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 120),
                        child: Image.asset(
                          'img/smiley_face.png',
                          height: 80,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colors.tertiary,
                        padding: const EdgeInsets.all(10)),
                    onPressed: () {
                      logger.i('User is going to Identify Car Page');
                      Navigator.of(context)
                          .pushReplacementNamed(IdentifyCarPage.routeName);
                    },
                    child: const Text(
                      'Să începem !',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Spacer(),
          ],
        ),
      )),
    );
  }
}
