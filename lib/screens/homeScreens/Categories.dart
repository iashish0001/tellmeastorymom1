import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tellmeastorymom/constants/constant.dart';
import 'package:tellmeastorymom/providers/categoryData.dart';
import 'package:tellmeastorymom/screenSize.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Color> col = [
    Color(0xFFDF5D90),
    Color(0xFFFFC687),
    Color(0xFF2D73D5),
    Color(0xFFFF9870),
    Color(0xFF6D60F8),
    Color(0xFF68E0E0),
    Color(0xFF1492E6),
    Color(0xFFF39358),
    Color(0xFF69DFA6),
    Color(0xFF9D8DFF),
  ];
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  List<ImageProvider> img = [
    AssetImage(
      "assets/images/img1.png",
    ),
    AssetImage(
      "assets/images/img2.png",
    ),
    AssetImage(
      "assets/images/img3.png",
    ),
    AssetImage(
      "assets/images/img4.png",
    ),
    AssetImage(
      "assets/images/img5.png",
    ),
    AssetImage(
      "assets/images/img6.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(
        10.0 * ScreenSize.widthMultiplyingFactor,
        10.0 * ScreenSize.heightMultiplyingFactor,
        10.0 * ScreenSize.widthMultiplyingFactor,
        0.0 * ScreenSize.heightMultiplyingFactor,
      ),
      child: StreamBuilder(
        stream: firebaseFirestore.collection("categories").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            snapshot.data.docs.forEach((result) {
              categories.add(CategoryData.fromSnapshot(result));
            });
            return ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.vertical,
              physics: physicsForApp,
              itemBuilder: (context, index) {
                var val = Random();
                int next(int min, int max) => min + val.nextInt(max - min + 50);
                var value = next(120, 180);
                print(value);
                return Container(
                  padding: EdgeInsets.only(
                    top: 10.0 * ScreenSize.heightMultiplyingFactor,
                    bottom: 10.0 * ScreenSize.heightMultiplyingFactor,
                    left: 7.5 * ScreenSize.widthMultiplyingFactor,
                    right: 7.5 * ScreenSize.widthMultiplyingFactor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: col[((2 * index) % col.length)],
                          image: DecorationImage(
                              image: img[((2 * index) % img.length)],
                              fit: BoxFit.contain,
                              alignment: Alignment.center),
                        ),
                        width: value.toDouble(),
                        height: 141.0 * ScreenSize.heightMultiplyingFactor,
                        child: Material(
                          type: MaterialType.transparency,
                          elevation: 6.0,
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25.0),
                          child: InkWell(
                            splashColor: col[((2 * index) % col.length)]
                                .withOpacity(0.3),
                            borderRadius: BorderRadius.circular(25.0),
                            onTap: () {},
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Center(
                                  child: Container(
                                    width: value.toDouble() - 10.0,
                                    child: Text(
                                      // "0 - 3 Years Old knowledge",
                                      categories[
                                              ((2 * index) % categories.length)]
                                          .categoryName,
                                      style: TextStyle(
                                        fontFamily: "Poppins-Bold",
                                        color: Colors.white,
                                        fontSize: 18.0 *
                                            ScreenSize.heightMultiplyingFactor,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 17.5 * ScreenSize.widthMultiplyingFactor,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Material(
                            type: MaterialType.transparency,
                            elevation: 6.0,
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25.0),
                            child: InkWell(
                              splashColor: col[((2 * index) + 1) % col.length]
                                  .withOpacity(0.3),
                              borderRadius: BorderRadius.circular(25.0),
                              onTap: () {},
                              child: Center(
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left:
                                        5.0 * ScreenSize.widthMultiplyingFactor,
                                    right:
                                        5.0 * ScreenSize.widthMultiplyingFactor,
                                  ),
                                  child: Text(
                                    categories[((2 * index) + 1) %
                                            categories.length]
                                        .categoryName,
                                    style: TextStyle(
                                      fontFamily: "Poppins-Bold",
                                      color: Colors.white,
                                      fontSize: 18.0 *
                                          ScreenSize.heightMultiplyingFactor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: col[((2 * index) + 1) % col.length],
                            image: DecorationImage(
                              image: img[((2 * index) + 1) % img.length],
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            ),
                          ),
                          height: 141.0 * ScreenSize.heightMultiplyingFactor,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          return circularProgressIndicator();
        },
      ),
    );
  }
}
