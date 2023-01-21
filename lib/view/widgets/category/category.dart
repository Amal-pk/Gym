import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_app/core/const.dart';
import 'package:gym_app/view/widgets/category/lists.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Choose Preferred Category",
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
              TextButton(
                onPressed: (() {}),
                child: const Text(
                  "Apply",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                  ),
                ),
              ),
            ],
          ),
          const CategoryLists(
            heading: "Luxe",
            title:
                " WTF Super Trainers. Exclusive WTF Events and Challenges, WTF App support, Access to WTF addons like Zumba, Dance, Yoga, and CrossFit training.",
            price: "Starting at: 2999",
            clr: Color.fromARGB(210, 167, 66, 164),
          ),
          const CategoryLists(
            heading: "Pro",
            title:
                "Specialized Trainers&Global Equipment, WTF App support, Access to WTF addons like Zumba, Dance, Yoga, and CrossFit training",
            price: "Starting at: 1999",
            clr: Colors.amber,
          ),
          const CategoryLists(
            heading: "Elite",
            title:
                "WTF App support, Access to our WTF addon plans like - Zumba, Dance, Yoga, and CrossFit training.",
            price: "Starting at: 999",
            clr: Color.fromARGB(255, 17, 6, 173),
          )
        ],
      ),
    );
  }
}
