import 'package:airbnb_redesign_ui/pages/booking_screen.dart';
import 'package:airbnb_redesign_ui/pages/players.dart';
import 'package:airbnb_redesign_ui/pages/venue.dart';
import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/utils/helper.dart';
import 'package:airbnb_redesign_ui/widgets/property_features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SinglePropertyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Builder(builder: (BuildContext context) {
        double heightFromWhiteBg =
            size.height + 300; // height for white section
        return Container(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                width: size.width,
                child: Container(
                  height: size.height ,
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/jvs.jpg"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300.0,
                width: size.width,
                child: Container(
                  height: heightFromWhiteBg,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Malaysia Super League Johor vs Selangor",
                            style: TextStyle(
                              fontSize: 18.0,
                              height: 1.5,
                              color: Color.fromRGBO(33, 45, 82, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Constants.primaryColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FlutterIcons.map_pin_fea,
                            color: Color.fromRGBO(138, 150, 190, 1),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Text(
                              "Stadium Bukit Jalil, Selangor",
                              style: GoogleFonts.inter(
                                fontSize: 16.0,
                                color: Color.fromRGBO(64, 74, 104, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      //Property features
                      PropertyFeatures(),
                      SizedBox(height: 10.0),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 16.0, right: 5.0),
                        height: ScreenUtil().setHeight(26.0),
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Venue Seat Layout",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "",
                                    style: GoogleFonts.inter(),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Helper.nextPage(context, Venue());
                              },
                              child: Container(
                                height: ScreenUtil().setHeight(24.0),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "View",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 16.0, right: 5.0),
                        height: ScreenUtil().setHeight(26.0),
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Event Information",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Teams Information",
                                    style: GoogleFonts.inter(),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Helper.nextPage(context, Players());
                              },
                              child: Container(
                                height: ScreenUtil().setHeight(24.0),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "View",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 10.0,
                      ),

                      Text(
                        "  Select ticket type",
                        style: GoogleFonts.inter(
                          fontSize: 20.0,
                          color: Color.fromRGBO(64, 74, 104, 1),
                        ),
                      ),

                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 16.0, right: 5.0),
                        height: ScreenUtil().setHeight(36.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "RM259.99 per ",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "First row",
                                    style: GoogleFonts.inter(),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Helper.nextPage(context, BookingScreen());
                              },
                              child: Container(
                                height: ScreenUtil().setHeight(30.0),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "Book",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 16.0, right: 5.0),
                        height: ScreenUtil().setHeight(36.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "RM159.99 per ",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Second row",
                                    style: GoogleFonts.inter(),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Helper.nextPage(context, BookingScreen());
                              },
                              child: Container(
                                height: ScreenUtil().setHeight(30.0),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "Book",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 16.0, right: 5.0),
                        height: ScreenUtil().setHeight(36.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "RM99.99 per",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Third row",
                                    style: GoogleFonts.inter(),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Helper.nextPage(context, BookingScreen());
                              },
                              child: Container(
                                height: ScreenUtil().setHeight(30.0),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "Book",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
