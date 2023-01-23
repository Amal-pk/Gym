import 'package:flutter/material.dart';
import 'package:gym_app/controller/category_Controller.dart';
import 'package:provider/provider.dart';

class CityAndLocation extends StatelessWidget {
  const CityAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CategoryController>(context);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: controller.near.length,
      itemBuilder: (BuildContext context, int index) {
        final gymcitys = controller.near[index];
        return Column(
          children: [
            Container(
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
    );
  }
}
