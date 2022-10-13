import 'package:flutter/material.dart';

class TableHeaderWidget extends StatelessWidget {
  final String title;
  final VoidCallback onAddPressed;
  final VoidCallback onGeneratePressed;
  const TableHeaderWidget({
    Key? key,
    required this.title,
    required this.onAddPressed,
    required this.onGeneratePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title Management',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: onGeneratePressed,
                child: const Text('Generate Excel'),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: onAddPressed,
            child: Text('Add New $title'),
          ),
        ],
      ),
    );
  }
}
