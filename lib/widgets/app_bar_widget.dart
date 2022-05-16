import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar appBarWidget() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0.0,
    backgroundColor: Colors.white,
    title: Row(
      children: [
        const Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Text(
              'THPPY',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
            ),
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: 15,
                  bottom: 17,
                ),
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Row(children: [
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.bell,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text('Lihle Fakudze'),
                ),
                const SizedBox(width: 10),
                const CircleAvatar(
                  radius: 22,
                ),
              ]),
            ],
          ),
        )
      ],
    ),
  );
}
