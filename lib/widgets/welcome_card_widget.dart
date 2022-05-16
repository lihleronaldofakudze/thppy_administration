import 'package:flutter/material.dart';

class WelcomeCardWidget extends StatelessWidget {
  const WelcomeCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 320,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome to the Flutter App',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                      'Try our new Admin Dashboard Template, build with live Ant-Design components. Customize it to your needs and release to production!'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
