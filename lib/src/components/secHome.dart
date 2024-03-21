import 'dart:developer';

import 'package:chatbbe/src/constants/colors.dart';
import 'package:chatbbe/src/constants/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SecHome extends StatelessWidget {
  const SecHome({super.key});

  @override
  Widget build(BuildContext context) {
    int In = 0;
    int currIn = 0;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.transparent;
    }

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 340.0, top: 38),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.profile_circled,
                  size: 54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0, left: 20),
              child: Text(
                "Podcast",
                style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(70),
              blurRadius: 23,
              spreadRadius: 0.3,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: StatefulBuilder(
            builder: (context, setState) => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: In,
              onTap: (value) {
                setState(() {});
                log('$In');
                In = value;
              },
              showSelectedLabels: true,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(
                    CupertinoIcons.house_alt,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    CupertinoIcons.house_alt_fill,
                    color: black,
                  ),
                  label: "-",
                ),
                const BottomNavigationBarItem(
                  label: "-",
                  icon: Icon(
                    Icons.search_sharp,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.search_sharp,
                    color: Colors.black,
                  ),
                ),
                const BottomNavigationBarItem(
                  label: "-",
                  icon: Icon(
                    Icons.bookmark_border_outlined,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.bookmark_border_outlined,
                    color: Colors.black,
                  ),
                ),
                const BottomNavigationBarItem(
                  label: "- ",
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            padding: const EdgeInsets.only(left: 20),
            child: StatefulBuilder(
              builder: (context, setState) => ListView.builder(
                itemCount: typesOfPodCast.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18.0, horizontal: 2),
                    child: (currIn == index)
                        ? FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.black,
                              elevation: 8,
                              fixedSize: const Size(115, 0),
                            ),
                            child: Text('${typesOfPodCast[index]}'),
                          )
                        : TextButton(
                            onPressed: () {
                              currIn = index;
                              log('$currIn');
                            },
                            child: Text(
                              '${typesOfPodCast[index]}',
                              style: GoogleFonts.poppins()
                                  .copyWith(color: Colors.grey),
                            ),
                          ),
                  );
                },
              ),
            ),
          ),
          Container(
            // padding: EdgeInsets.only(top: 9, bottom: 20),
            height: 200,
            color: Colors.transparent,
            child: StatefulBuilder(
              builder: (context, setState) => ListView.builder(
                itemCount: containers.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 120,
                    width: 320,
                    margin: const EdgeInsets.symmetric(horizontal: 34),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey.withAlpha(45)),
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        fit: BoxFit.cover,
                        invertColors: false,
                        scale: 1,
                        opacity: 0.9,
                        image: NetworkImage(
                          containers[index],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
