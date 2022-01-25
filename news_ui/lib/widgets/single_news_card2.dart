import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_ui/pages/single_news_page.dart';
import 'package:news_ui/utils/helper.dart';

class SingleNewsCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.nextScreen(context, SingleNewsPage());
      },
      child: Column(
        children: [
          Container(
            height: ScreenUtil().setHeight(210.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/mystery.jpeg",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "Sandra Jimenez: The Mystery Shack is a souvenirs shop that...",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Text(
                "20 min ago",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Text(
                " | ",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Text(
                "Trending",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color.fromRGBO(251, 89, 84, 1),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}