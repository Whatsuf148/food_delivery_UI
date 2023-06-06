import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowBurger extends StatelessWidget {
  const ShowBurger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
        ),
        Image.asset("photo/mithoburger.png"),
        Positioned(
            bottom: 0,
            child: Container(
              height: 390,
              width: (MediaQuery.of(context).size.width),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Veg Burger",
                          style: GoogleFonts.dmSans(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                       const Text("⭐4.8(Review)"),
                      ],
                    ),
                    
                  ),
                ],
              ),
            ))
      ],
    ));
  }
}
