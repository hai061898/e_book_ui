import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'BookInfo.dart';
import 'bottom_card.dart';
import 'list_chapter.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                      top: Get.height * .12,
                      left: Get.width * .1,
                      right: Get.width * .02),
                  height: Get.height * .48,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: BookInfo(
                    size: size,
                  )),
              Chapter(size: size),
              BottomCard(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
