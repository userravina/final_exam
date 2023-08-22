
import 'package:final_exam/Screen/controller/controller.dart';
import 'package:final_exam/Screen/view/fevrite_screen.dart';
import 'package:final_exam/Screen/view/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class bottomScreen extends StatefulWidget {
  const bottomScreen({super.key});

  @override
  State<bottomScreen> createState() => _bottomScreenState();
}

// ignore: camel_case_types
class _bottomScreenState extends State<bottomScreen> {
  @override
  Widget build(BuildContext context) {
    Insta_controller controller = Get.put(Insta_controller());
    return SafeArea(
      child: Scaffold(
        body: Obx(
              () =>  IndexedStack(
            index: controller.i. value,
            children: const [
              search_screen(),
              favorite_screen(),
            ],
          ),
        ),
        bottomNavigationBar: Obx(
              () => SizedBox(height: 60,
            child: BottomNavigationBar(
              currentIndex: controller.i.value,
              onTap: (value) {
                controller.i.value = value;
              },
              mouseCursor: MouseCursor.uncontrolled,
              elevation: 15,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.black54,
              items: const [
                BottomNavigationBarItem(
                  label: "search",
                  icon: Icon(Icons.search,size: 30),
                ),
                BottomNavigationBarItem(
                  label: "favorite",
                  icon: Icon(Icons.favorite,size: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
