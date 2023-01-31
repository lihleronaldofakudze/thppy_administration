import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
                children: [
                  const Text(
                    'Welcome to the Administration Panel',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    'Administration Panel is a tool to manage your THPPY Data. '
                    'With this tool and manage your data in a simple and easy way.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('assets/images/eswatini.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('assets/images/lesotho.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('assets/images/botswana.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('assets/images/nercha.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('assets/images/nac.jpg'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('assets/images/nahp.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ScreenTypeLayout(
                    mobile: Container(),
                    tablet: const SizedBox(
                      height: 16,
                    ),
                    desktop: const SizedBox(
                      height: 16,
                    ),
                  ),
                  ScreenTypeLayout(
                    mobile: Container(),
                    tablet: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage('assets/images/limkokwin.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('assets/images/sadc.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                    desktop: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage('assets/images/limkokwin.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('assets/images/sadc.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ScreenTypeLayout(
              mobile: Container(),
              desktop: Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage('assets/images/admin-illustrator.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
