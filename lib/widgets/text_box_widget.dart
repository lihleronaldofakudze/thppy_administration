import 'package:flutter/material.dart';

class TextBoxWidget extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType type;
  const TextBoxWidget(
      {Key? key,
      required this.label,
      required this.controller,
      required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
