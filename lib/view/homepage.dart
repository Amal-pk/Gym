import 'package:flutter/material.dart';
import 'package:gym_app/controller/category_Controller.dart';
import 'package:gym_app/view/widgets/appbar/appbar_flexiblespcace.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final high = MediaQuery.of(context).size.height;
    final controller = Provider.of<CategoryController>(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 150,
              backgroundColor: Colors.white,
              leading: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.black,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.black,
                ),
              ),
              title: Column(
                children: const [
                  Text(
                    "Gyms",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "location",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: (() {
                    controller.getGym();
                  }),
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ],
              flexibleSpace: Container(
                margin: const EdgeInsets.only(top: 50),
                decoration: const BoxDecoration(),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: AppBarButton(),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return Container(
                    height: high / 3,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: high / 5,
                          decoration: const BoxDecoration(
                            // image: DecorationImage(
                            // image: NetworkImage(gymCity.image)),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color: Colors.amber,
                          ),
                          // child: Text(gymCity.city),
                        )
                      ],
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
