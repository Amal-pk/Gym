import 'package:flutter/material.dart';
import 'package:gym_app/controller/category_Controller.dart';
import 'package:gym_app/core/const.dart';
import 'package:provider/provider.dart';

class CityAndLocation extends StatelessWidget {
  const CityAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CategoryController>(context);
    return Container(
      margin: const EdgeInsets.all(16),
      child: controller.isLoading == true
          ? const Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Choose Preferred City \nand Location",
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: (() {}),
                        child: const Text(
                          "Apply",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                high10,
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: controller.near.length,
                  itemBuilder: (BuildContext context, int index) {
                    final gymcitys = controller.near[index];
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(gymcitys.image),
                            ),
                          ),
                        ),
                        Text(gymcitys.city)
                      ],
                    );
                  },
                ),
                high30,
                const Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
                Wrap(
                  children: List.generate(
                    controller.near.length,
                    ((index) {
                      final gymnear = controller.near[index];
                      return Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 2,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Text(gymnear.popularLocations.first.location),
                        //popularLocations.first.location
                      );
                    }),
                  ),
                ),
              ],
            ),
    );
  }
}
