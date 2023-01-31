import 'package:flutter/material.dart';

class DropBoxWidget extends StatefulWidget {
  final String label;
  final List items;

  final TextEditingController controller;
  const DropBoxWidget({
    Key? key,
    required this.label,
    required this.items,
    required this.controller,
  }) : super(key: key);

  @override
  State<DropBoxWidget> createState() => _DropBoxWidgetState();
}

class _DropBoxWidgetState extends State<DropBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        DropdownButtonFormField(
          items: widget.items
              .map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              widget.controller.text = value.toString();
            });
          },
          decoration: InputDecoration(
            labelText: widget.label,
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
