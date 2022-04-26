import 'package:flutter/material.dart';

class TextBoxWidget extends StatefulWidget {
  final String label;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType type;
  const TextBoxWidget(
      {Key? key,
      required this.label,
      required this.isPassword,
      required this.controller,
      required this.type})
      : super(key: key);

  @override
  State<TextBoxWidget> createState() => _TextBoxWidgetState();
}

class _TextBoxWidgetState extends State<TextBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          obscureText: widget.isPassword,
          controller: widget.controller,
          decoration: InputDecoration(
            labelText: widget.label,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 1,
              horizontal: 8,
            ),
          ),
        ),
      ],
    );
  }
}
