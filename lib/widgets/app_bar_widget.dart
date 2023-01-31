import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:thppy_administration/models/CurrentUser.dart';
import 'package:thppy_administration/screens/youth/youth.dart';
import 'package:thppy_administration/services/db/youth_services.dart';

PreferredSize appBarWidget({required BuildContext context}) {
  final currentUser = Provider.of<CurrentUser?>(context);
  return PreferredSize(
    preferredSize: const Size(double.infinity, 65),
    child: StreamBuilder<Youth>(
      stream: YouthServices(uid: currentUser!.uid).youth,
      builder: (context, snapshot) {
        Youth? youth = snapshot.data!;
        if (snapshot.hasData) {
          return Container(
            color: Colors.white,
            padding: const EdgeInsets.all(
              4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Technology HIV Prevetion Program for the Youth',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
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
                          child: Text('${youth.name} ${youth.surname}'),
                        ),
                        const SizedBox(width: 10),
                        CircleAvatar(
                          radius: 22,
                          backgroundImage: NetworkImage(youth.image),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        } else {
          return const LinearProgressIndicator();
        }
      },
    ),
  );
}
