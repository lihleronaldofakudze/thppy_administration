import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/text_box_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Technology Based HIV Prevention Program for the Youth',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: PhysicalModel(
                    color: Colors.white,
                    elevation: 16,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 600,
                      height: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Form(
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextBoxWidget(
                                        label: 'Email Address',
                                        isPassword: false,
                                        controller: _emailController,
                                        type: TextInputType.emailAddress),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child:
                                            const Text('Reset your password'),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/login');
                                        },
                                        child: const Text(
                                          'Cancel Now!',
                                          style: TextStyle(
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Image.asset(
                                'assets/images/logo.png',
                                width: 200,
                                height: 200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text('Change to Dark Mode THEME'.toUpperCase()),
                )
              ]),
        ),
      ),
    );
  }
}
