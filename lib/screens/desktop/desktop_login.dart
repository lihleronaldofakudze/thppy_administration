// ignore_for_file: use_build_context_synchronously

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:thppy_administration/services/auth_services.dart';
import 'package:thppy_administration/widgets/text_box_widget.dart';

class DesktopLogin extends StatefulWidget {
  const DesktopLogin({Key? key}) : super(key: key);

  @override
  State<DesktopLogin> createState() => _DesktopLoginState();
}

class _DesktopLoginState extends State<DesktopLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool rememberMe = false;
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                                      controller: _emailController,
                                      type: TextInputType.emailAddress,
                                    ),
                                    TextBoxWidget(
                                      label: 'Password',
                                      controller: _passwordController,
                                      type: TextInputType.visiblePassword,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/forgot_password');
                                        },
                                        child: const Text(
                                          'Forgot Password?',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: rememberMe,
                                          onChanged: (value) {
                                            setState(() {
                                              rememberMe = value!;
                                            });
                                          },
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        const Text(
                                          'Remember me',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: _login,
                                        child: _isLoading
                                            ? const CircularProgressIndicator(
                                                color: Colors.white,
                                                strokeWidth: 2,
                                              )
                                            : const Text('Access your account'),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Image.network(
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
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: Text('Change to Dark Mode THEME'.toUpperCase()),
                )
              ]),
        ),
      ),
    );
  }

  _login() async {
    setState(() {
      _isLoading = true;
    });
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      final result = await AuthServices().login(
        email: _emailController.text,
        password: _passwordController.text,
      );

      if (result != null) {
        setState(() {
          _isLoading = false;
        });
        Navigator.pushNamed(context, '/');
      } else {
        setState(() {
          _isLoading = false;
        });
        AwesomeDialog(
          width: MediaQuery.of(context).size.width / 2,
          context: context,
          dialogType: DialogType.error,
          title: 'Error',
          desc: 'Something went wrong, please try again.',
          btnOkOnPress: () {},
        ).show();
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      AwesomeDialog(
        width: MediaQuery.of(context).size.width / 2,
        context: context,
        dialogType: DialogType.error,
        title: 'Error',
        desc: 'Please enter all required details',
        btnOkOnPress: () {},
      ).show();
    }
  }
}
