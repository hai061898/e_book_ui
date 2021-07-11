import 'package:ebook/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'card_book.dart';

class ListCardBook extends StatelessWidget {
  const ListCardBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ReadingListCard(
            image: "assets/images/book-1.png",
            title: "Crushing & Influence",
            auth: "Gary Venchuk",
            rating: 4.9,
            pressDetails: () => Get.toNamed(RoutesName.DETAIL),
          ),
          ReadingListCard(
            image: "assets/images/book-2.png",
            title: "Top Ten Business Hacks",
            auth: "Herman Joel",
            rating: 4.8,
          ),
          SizedBox(width: 30),
        ],
      ),
    );
  }
}