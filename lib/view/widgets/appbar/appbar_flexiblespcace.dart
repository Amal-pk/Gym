import 'package:flutter/material.dart';
import 'package:gym_app/controller/category_Controller.dart';
import 'package:gym_app/core/const.dart';
import 'package:gym_app/view/widgets/category/category.dart';
import 'package:gym_app/view/widgets/city_location/city_and_location.dart';
import 'package:provider/provider.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CategoryController>(context);
    return Row(
      children: [
        Column(
          children: [
            Column(
              children: [
                const Text(
                  "City",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.nearbyTruff();
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: ((context) {
                        return const CityAndLocation();
                      }),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.black,
                        )
                      ],
                    ),
                    child: Row(
                      children: const [
                        Text('city'),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        wid10,
        Column(
          children: [
            Column(
              children: [
                const Text(
                  "Location",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.nearbyTruff();
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: ((context) {
                        return const CityAndLocation();
                      }),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.black,
                        )
                      ],
                    ),
                    child: Row(
                      children: const [
                        Text('city'),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        wid10,
        Column(
          children: [
            Column(
              children: [
                const Text(
                  "Category",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: ((context) {
                        return const Category();
                      }),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.black,
                        )
                      ],
                    ),
                    child: Row(
                      children: const [
                        Text('city'),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
