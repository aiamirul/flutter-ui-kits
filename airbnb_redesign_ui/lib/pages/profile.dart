import 'package:airbnb_redesign_ui/pages/booking_screen.dart';
import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/utils/helper.dart';
import 'package:airbnb_redesign_ui/widgets/app_bottom_navigation_profile.dart';
import 'package:airbnb_redesign_ui/widgets/property_features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: AppBottomNavigationProfile(),
      body: Builder(builder: (BuildContext context) {
        double heightFromWhiteBg =
            size.height - 300.0; // height for white section
        return Container(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                width: size.width,
                child: Container(
                  height: size.height,
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/user.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 450.0,
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
                            "Your Profile",
                            style: TextStyle(
                              fontSize: 18.0,
                              height: 1.5,
                              color: Color.fromRGBO(33, 45, 82, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.verified_user,
                            color: Constants.primaryColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    
                      SizedBox(
                        height: 10.0,
                      ),
                 
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Your Profile Information",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.inter(
                          fontSize: 15.0,
                          height: 1.5,
                          color: Color.fromRGBO(138, 150, 190, 1),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 16.0, right: 5.0),
                        height: ScreenUtil().setHeight(56.0),
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
                                    text: "Username:",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " MyKBSUser",
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
                                height: ScreenUtil().setHeight(45.0),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "Edit",
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
                        height: 40.0,
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 16.0, right: 5.0),
                        height: ScreenUtil().setHeight(56.0),
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
                                    text: "Email",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " myKbsUser@gmail.com",
                                    style: GoogleFonts.inter(),
                                  )
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      )
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
