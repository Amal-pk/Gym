import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_app/controller/category_Controller.dart';
import 'package:gym_app/core/const.dart';
import 'package:provider/provider.dart';

class CategoryLists extends StatelessWidget {
  const CategoryLists({
    super.key,
    required this.heading,
    required this.title,
    required this.price,
    required this.clr,
  });
  final String heading;
  final Color clr;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CategoryController>(context);
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                heading,
                style: GoogleFonts.rubikGlitch(fontSize: 32, color: clr),
              ),
              Checkbox(
                value: controller.check,
                onChanged: ((value) {
                  controller.checking();
                  // // setState(() {
                  // this.c = value!;
                  // // });
                }),
              )
            ],
          ),
          high10,
          Text(
            title,
            style: TextStyle(fontSize: 18),
          ),
          high10,
          Text(
            price,
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
