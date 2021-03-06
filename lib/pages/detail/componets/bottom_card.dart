import 'package:ebook/utils/constants.dart';
import 'package:ebook/widgets/book_rating.dart';
import 'package:ebook/widgets/roundedButton.dart';
import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headline5,
              children: [
                TextSpan(
                  text: "You might also ",
                ),
                TextSpan(
                  text: "like….",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(left: 24, top: 24, right: 150),
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Color(0xFFFFF8F9),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                              text: "How To Win \nFriends & Influence \n",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: "Gary Venchuk",
                              style: TextStyle(color: kLightBlackColor),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          BookRating(
                            score: 4.9,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: RoundedButton(
                              text: "Read",
                              verticalPadding: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/book-3.png",
                  width: 150,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
