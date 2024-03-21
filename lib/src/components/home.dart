import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 289.0),
            child: Row(
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Divider(
                    endIndent: 830,
                    color: Colors.black,
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Divider(
                    endIndent: 800,
                    color: Colors.black,
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Divider(
                    endIndent: 780,
                    color: Colors.black,
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Divider(
                    endIndent: 800,
                    color: Colors.black,
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Divider(
                    endIndent: 830,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 360, left: 290),
            child: GestureDetector(
              onTap: () {
                log("To next Page");

                Navigator.pushReplacementNamed(context, 'secHome');
              },
              child: CircleAvatar(
                backgroundColor: Colors.black.withAlpha(200),
                maxRadius: 40,
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  // weight: 23,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(-76, 180),
            child: Card.filled(
              shape: const OvalBorder(
                  // borderRadius: BorderRadius.circular(34),
                  ),
              color: Colors.grey.withAlpha(59),
              child: const SizedBox(
                width: 155,
                height: 300,
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(336, 620),
            child: Card.filled(
              shape: const OvalBorder(
                  // borderRadius: BorderRadius.circular(34),
                  ),
              color: Colors.grey.withAlpha(45),
              child: const SizedBox(
                width: 205,
                height: 270,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200.0, top: 144),
            child: Text(
              "PodCast",
              style: GoogleFonts.poppins().copyWith(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 650.0),
            child: Image.network(
                'https://i.pinimg.com/564x/10/71/a7/1071a7073ee4feba9bd0da228093ca5e.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 95, top: 224),
            child: Text(
              "Discover more than \n 100k talks and Don't miss\n your favourite podcast",
              softWrap: true,
              overflow: TextOverflow.clip,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.poppins().copyWith(
                fontSize: 23,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
