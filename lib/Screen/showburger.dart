import 'dart:ffi';

import 'package:flutter/material.dart';

class ShowBurger extends StatelessWidget {
  const ShowBurger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: (MediaQuery.of(context).size.height),
        ),
        Image.asset("photo/mithoburger.png"),
      ],
    ));
  }
}
