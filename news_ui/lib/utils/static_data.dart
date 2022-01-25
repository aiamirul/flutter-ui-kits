import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_ui/models/category.dart';
import 'package:news_ui/models/news.dart';

class StaticData {
  static List<Category> categories = [
    Category(
      id: 1,
      title: "Trending",
      icon: Icon(
        FlutterIcons.trending_up_fea,
      ),
    ),
    Category(
      id: 2,
      title: "Univers",
      icon: Icon(
        FlutterIcons.globe_ent,
      ),
    ),
    Category(
      id: 3,
      title: "Science",
      icon: Icon(
        FlutterIcons.react_faw5d,
      ),
    ),
    Category(
      id: 4,
      title: "Government",
      icon: SvgPicture.asset("assets/svg/politics.svg"),
    ),
    Category(
      id: 5,
      title: "Business",
      icon: Icon(FlutterIcons.handshake_o_faw),
    ),
    Category(
      id: 6,
      title: "Sports",
      icon: Icon(FlutterIcons.soccer_ball_o_faw),
    ),
    Category(
      id: 7,
      title: "Arts",
      icon: SvgPicture.asset("assets/svg/arts.svg"),
    ),
    Category(
      id: 8,
      title: "Health",
      icon: Icon(FlutterIcons.stethoscope_faw5s),
    ),
    Category(
      id: 9,
      title: "Food",
      icon: SvgPicture.asset("assets/svg/food.svg"),
    ),
    Category(
      id: 10,
      title: "Technology",
      icon: SvgPicture.asset("assets/svg/technology.svg"),
    ),
  ];

  static List<News> news = [
    News(
      id: 1,
      category: "Business",
      title: "Who Is Standford Pines, Really?",
      content:
          "A successful business man selling mysterious souvenirs and also taking care of his grandson and grandaughter. Maybe the kids will run the shop someday. Standford Pines is running a house - shop , creative idea to start a business. The travelers and local residents love to shop at his shack",
      timePosted: "10 hours ago",
      imagePath: "assets/images/stan.jpeg",
    ),
    News(
      id: 2,
      category: "Sports",
      title: "The True Cost Of Lionel Messi’s...",
      content:
          "The actor also played groundbreaking figures like the James Brown, Jackie Robinson and Thurgood Marshall,",
      timePosted: "10 hours ago",
      imagePath: "assets/images/messi.png",
    ),
    News(
      id: 3,
      category: "Magazine",
      title: "The MoneyBags...",
      content:
          "In a candid interview, the magazine discusses Mr.Ergmans Bratsman secrets of being so rich just by being a manager of the Several Timez. They are the most popular boys group in Gravity Falls.",
      timePosted: "1 day ago",
      imagePath: "assets/images/erg.png",
    ),
    News(
      id: 4,
      category: "Arts",
      title: "Debut Novelists and Women Dominate...",
      content:
          "Some literary heavy hitters missed out, including Hilary Mantel, whose latest work, “The Mirror and the Light,” did not make the cut",
      timePosted: "1 day ago",
      imagePath: "assets/images/art.png",
    ),
  ];
}
