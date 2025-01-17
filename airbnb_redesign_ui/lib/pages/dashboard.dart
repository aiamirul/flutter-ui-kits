import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:airbnb_redesign_ui/utils/static_data.dart';
import 'package:airbnb_redesign_ui/widgets/app_bottom_navigation.dart';
import 'package:airbnb_redesign_ui/widgets/house_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
    
            mainAxisSize: MainAxisSize.min,
            children: [
              SafeArea(child: SizedBox()),
              SizedBox(
                height: 15.0,
              ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: ScreenUtil().setHeight(50.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(251, 251, 251, 1),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  padding: EdgeInsets.only(left: 16.0, right: 8.0,bottom: 1),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search events near you...",
                              hintStyle: GoogleFonts.inter(
                                color: Color.fromRGBO(153, 163, 196, 1),
                                
                              )),
                              
                        ),
                        
                      ),
                      Container(
                        height: ScreenUtil().setHeight(25.0),
                        width: ScreenUtil().setWidth(25.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Icon(
                          FlutterIcons.search1_ant,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Text(
                  "This Weeks events",
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: ScreenUtil().setHeight(300.0),
                // Lets create a model to structure property data
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    // Lets create a property card widget
                    return HouseCard(
                      house: StaticData.properties[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  // Make the length our static data length
                  itemCount: StaticData.properties.length - 4,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Text(
                  "Most Trending Events this month",
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: ScreenUtil().setHeight(300.0),
                // Lets create a model to structure property data
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    // Lets create a property card widget
                    return HouseCard(
                      house: StaticData.properties[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  // Make the length our static data length
                  itemCount: StaticData.properties.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
