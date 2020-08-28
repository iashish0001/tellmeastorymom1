import 'package:flutter/material.dart';
import 'package:tellmeastorymom/commonWidgets/StoriesScreen.dart';
import 'package:tellmeastorymom/constants/constant.dart';
import 'package:tellmeastorymom/drawerScreens/LikedStories.dart';
import 'package:tellmeastorymom/drawerScreens/ShareWithFriends.dart';
import 'package:tellmeastorymom/screenSize.dart';
import 'package:tellmeastorymom/drawerScreens/Profile.dart';

class HomeDrawer extends StatefulWidget {
  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
              35.0 * ScreenSize.widthMultiplyingFactor,
              35.0 * ScreenSize.heightMultiplyingFactor,
              15.0 * ScreenSize.widthMultiplyingFactor,
              45.0 * ScreenSize.heightMultiplyingFactor,
            ),
            decoration: BoxDecoration(
              color: primaryColour,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 50.0,
                  child: Image.asset(
                    'assets/images/profileImage.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 15.0 * ScreenSize.heightMultiplyingFactor,
                ),
                Text(
                  "Tellmeastorymom",
                  style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 22.0 * ScreenSize.heightMultiplyingFactor,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0 * ScreenSize.heightMultiplyingFactor,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => Home()));
            },
            leading: Icon(
              Icons.home,
              size: 24 * ScreenSize.heightMultiplyingFactor,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 18.0 * ScreenSize.heightMultiplyingFactor),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            leading: Icon(
              Icons.business,
              color: Colors.black,
              size: 24 * ScreenSize.heightMultiplyingFactor,
            ),
            title: Text(
              "Mompreneur",
              style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 18.0 * ScreenSize.heightMultiplyingFactor),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LikedStories()));
            },
            leading: Icon(
              Icons.favorite_border,
              size: 24 * ScreenSize.heightMultiplyingFactor,
              color: Colors.black,
            ),
            title: Text(
              "Liked Stories",
              style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 18.0 * ScreenSize.heightMultiplyingFactor),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.star_border,
              size: 24 * ScreenSize.heightMultiplyingFactor,
              color: Colors.black,
            ),
            title: Text(
              "Rate App",
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 18.0 * ScreenSize.heightMultiplyingFactor,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            leading: Icon(
              Icons.person_outline,
              color: Colors.black,
              size: 24 * ScreenSize.heightMultiplyingFactor,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 18.0 * ScreenSize.heightMultiplyingFactor),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ShareWithFriends()));
            },
            leading: Icon(
              Icons.share,
              color: Colors.black,
              size: 24 * ScreenSize.heightMultiplyingFactor,
            ),
            title: Text(
              "Share with friends",
              style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 18.0 * ScreenSize.heightMultiplyingFactor),
            ),
          ),
          SizedBox(
            height: 50.0 * ScreenSize.heightMultiplyingFactor,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 15.0 * ScreenSize.widthMultiplyingFactor,
                right: 15.0 * ScreenSize.widthMultiplyingFactor),
            child: Divider(
              height: 50.0 * ScreenSize.heightMultiplyingFactor,
              thickness: 1.0,
              color: Color(0xFF707070),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.black,
              size: 24 * ScreenSize.heightMultiplyingFactor,
            ),
            title: Text(
              "Logout",
              style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 18.0 * ScreenSize.heightMultiplyingFactor),
            ),
          ),
        ],
      ),
    );
  }
}
