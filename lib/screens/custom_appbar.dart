import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/constants.dart';
class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Builder(
                        builder: (context) => IconButton(
                            icon: const Icon(Icons.dashboard),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            }),
                      )),
                      Column(
                        children: [
                          const Text('Manu'),
                          const Text('Tamilnadu (India)')
                        ],
                      ),
                      const CircleAvatar(
                        backgroundColor: kPrimaryColor,
                      )
                ],
              );
  }
}