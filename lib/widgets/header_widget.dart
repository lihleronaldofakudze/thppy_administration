import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final VoidCallback onAddPressed;
  final VoidCallback onGeneratePressed;
  final Widget child;
  final bool isAddable;
  const HeaderWidget({
    Key? key,
    required this.title,
    required this.onAddPressed,
    required this.onGeneratePressed,
    required this.child,
    this.isAddable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Scaffold(
        // appBar: appBarWidget(context: context),

        body: Row(
          children: [
            const Expanded(
              flex: 1,
              child: DrawerWidget(),
            ),
            Expanded(
              flex: 4,
              child: Card(
                child: Column(
                  children: [
                    Padding(
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                onPressed: onGeneratePressed,
                                child: const Text('Generate Excel'),
                              ),
                              isAddable
                                  ? const SizedBox(width: 16)
                                  : const SizedBox(),
                              isAddable
                                  ? ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: onAddPressed,
                                      child: Text('Add New $title'),
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    child,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      mobile: Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          title: const Text('THPPY Administration'),
        ),
        body: Card(
          child: Column(
            children: [
              Padding(
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
                    ScreenTypeLayout(
                      mobile: PopupMenuButton(
                        itemBuilder: (itemBuilder) {
                          return [
                            const PopupMenuItem(
                              value: 1,
                              child: Text('Generate Excel'),
                            ),
                            PopupMenuItem(
                              value: 2,
                              child: Text('Add New $title'),
                            ),
                          ];
                        },
                        onSelected: (value) {
                          if (value == 1) {
                            onGeneratePressed();
                          } else if (value == 2) {
                            onAddPressed();
                          }
                        },
                      ),
                      desktop: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            onPressed: onGeneratePressed,
                            child: const Text('Generate Excel'),
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
                    ),
                  ],
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
