import 'package:flutter/material.dart';

import 'chapter_list.dart';

class Chapter extends StatelessWidget {
  const Chapter({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * .48 - 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChapterCard(
            name: "Money",
            chapterNumber: 1,
            tag: "Life is about change",
            press: () {},
          ),
          ChapterCard(
            name: "Power",
            chapterNumber: 2,
            tag: "Everything loves power",
            press: () {},
          ),
          ChapterCard(
            name: "Influence",
            chapterNumber: 3,
            tag: "Influence easily like never before",
            press: () {},
          ),
          ChapterCard(
            name: "Win",
            chapterNumber: 4,
            tag: "Winning is what matters",
            press: () {},
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
