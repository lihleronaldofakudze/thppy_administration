import 'package:flutter/material.dart';
import 'package:thppy_administration/widgets/text_box_widget.dart';

class MobileForgotPassword extends StatefulWidget {
  const MobileForgotPassword({Key? key}) : super(key: key);

  @override
  State<MobileForgotPassword> createState() => _MobileForgotPasswordState();
}

class _MobileForgotPasswordState extends State<MobileForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 200,
                ),
                const Text(
                  'THPPY Administration',
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
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/home');
                                  },
                                  child: const Text('Reset your password'),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/login');
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
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
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
