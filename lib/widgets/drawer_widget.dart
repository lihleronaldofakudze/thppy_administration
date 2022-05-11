import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:thppy_administration/constants.dart';
import 'package:thppy_administration/responsive.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: Responsive.isMobile(context) ? 16.0 : 0.0,
      child: ListView.builder(
          itemCount: Constants().drawee.length,
          itemBuilder: (itemBuilder, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Constants().drawee[index].route,
                );
              },
              onHover: (value) {
                if (kDebugMode) {
                  print(value);
                }
              },
              child: ListTile(
                leading: Icon(
                  Constants().drawee[index].icon,
                  color: Colors.black,
                ),
                title: Text(
                  Constants().drawee[index].title,
                ),
              ),
            );
          }),
    );
  }
}
