import 'package:final_exam/Screen/model/insta_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../controller/controller.dart';

class search_screen extends StatefulWidget {
  const search_screen({super.key});

  @override
  State<search_screen> createState() => _search_screenState();
}

class _search_screenState extends State<search_screen> {
  Insta_controller controller = Get.put(Insta_controller());
  TextEditingController txtsearch = TextEditingController();
@override
  void initState() {
   controller.getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder(
        future: controller.getdata(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else if (snapshot.hasData) {
            InstaModel data = snapshot.data!;
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 10, right: 10, bottom: 10),
                  child: Container(
                    height: 6.h,
                    width: 97.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black54, blurRadius: 4)
                        ]),
                    child: Center(
                      child: TextField(
                        controller: txtsearch,
                        cursorColor: Colors.grey.shade600,
                        decoration:  InputDecoration(
                          hintText: "${data.result}",
                          border: InputBorder.none,
                          prefixIcon: InkWell(
                            onTap: () {
                              var search = txtsearch.text;
                              search = data.status;
                            },
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      )),
    );
  }
}
