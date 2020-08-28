import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tellmeastorymom/constants/constant.dart';
import 'package:tellmeastorymom/screenSize.dart';

class ShareWithFriends extends StatefulWidget {
  @override
  _ShareWithFriendsState createState() => _ShareWithFriendsState();
}

class _ShareWithFriendsState extends State<ShareWithFriends> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        appBar:
            appBarOverall(heading: "Share with friends", searchThere: false),
        body: Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.width,
                    child: Image.asset(
                      'assets/images/shareImage.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "Invite your friends to read &\nenjoy amazing stories",
                    style: TextStyle(
                      fontFamily: 'Poppins-SemiBold',
                      fontSize: 17.0 * ScreenSize.heightMultiplyingFactor,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Container(
                width: 234.0 * ScreenSize.widthMultiplyingFactor,
                padding: EdgeInsets.symmetric(
                  horizontal: 15.0 * ScreenSize.widthMultiplyingFactor,
                  vertical: 15.0 * ScreenSize.heightMultiplyingFactor,
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0 * ScreenSize.widthMultiplyingFactor,
                    vertical: 10.0 * ScreenSize.heightMultiplyingFactor,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: () {
                    Share.share(
                        'Hey checkout this app it would be worth your time.\nApp Url');
                  },
                  color: primaryColour,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 24 * ScreenSize.heightMultiplyingFactor,
                      ),
                      SizedBox(
                        width: 10.0 * ScreenSize.widthMultiplyingFactor,
                      ),
                      Text(
                        "Share App",
                        style: TextStyle(
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 14 * ScreenSize.heightMultiplyingFactor,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
