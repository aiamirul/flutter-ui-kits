import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_ui/utils/constants.dart';
import 'package:news_ui/widgets/single_news_header.dart';

class SingleNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 0.0,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: Container(
        height: ScreenUtil().setHeight(100.0),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(232, 232, 232, 1),
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write a comment...",
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(186, 186, 186, 1),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Transform.rotate(
                  angle: -0.8,
                  child: Icon(
                    FlutterIcons.send_mdi,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleNewsHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Sandra Jeminez: There is a new shop opening in the middle of the woods but...",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "There is something going on in Gravity Falls, there's always a mystery everytime you walk out the door, go to the Mystery Shack where everything's a Mystery.",
                        style: TextStyle(
                          height: 1.7,
                          color: Color.fromRGBO(139, 144, 165, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: ScreenUtil().setHeight(300.0),
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
                        height: 10.0,
                      ),
                      Text(
                        "By Sandra Jimenez",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Published June. 26, 2026",
                        style: TextStyle(
                          height: 1.7,
                          color: Color.fromRGBO(139, 144, 165, 1),
                        ),
                      ),
                      Text(
                        "Updated June. 29, 2026, 3:48 am ET",
                        style: TextStyle(
                          height: 1.7,
                          color: Color.fromRGBO(139, 144, 165, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        """ The Mystery Shack is selling weird looking souvenirs that we all don't know where it came from. Standford pines is the owner of the Mystery Shack . The shop is running smoothly and have 4 workers including his grandson and grandaughter. The workers is Soos and Wendy they're both a teen making money during the summer.
Dipper and his twin sister Mable come to Gravity Falls for the summer. why am i writing about them? Well because i think the boy is suspicious i've been following him for days. Now there is something going on in Gravity Falls that we all don't know. everything is a mystery, everything is a puzzle. This life is a corn maze.  
                        """,
                        style: TextStyle(
                          height: 1.7,
                          color: Color.fromRGBO(139, 144, 165, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
