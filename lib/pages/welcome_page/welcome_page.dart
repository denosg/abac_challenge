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
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.grey[100],
              ),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      child: Text(
                        'Bine ați venit !',
                        style: TextStyle(
                            color: colors.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: Image.asset(
                      'img/car_vector.png',
                      width: deviceSize.width * 0.8,
                    ),
                  ),
                  const SizedBox(height: 50),
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Spacer(),
          ],
        ),
      )),
    );
  }
}
