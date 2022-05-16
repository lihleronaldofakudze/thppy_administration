import 'package:flutter/material.dart';

class TableFooterWidget extends StatelessWidget {
  final String title;
  final VoidCallback onUpdatePressed;
  final VoidCallback onDeletePressed;
  const TableFooterWidget({
    Key? key,
    required this.title,
    required this.onUpdatePressed,
    required this.onDeletePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.orange),
            onPressed: onUpdatePressed,
            child: Text('Update $title'),
          ),
          ElevatedButton(
            onPressed: onDeletePressed,
            child: Text('Delete $title'),
          ),
        ],
      ),
    );
  }
}
