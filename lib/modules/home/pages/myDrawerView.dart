import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/core/theme_manager/color_pallate.dart';

class MyDrawerView extends StatelessWidget {
  final Function onGoToHome;

  const MyDrawerView({super.key, required this.onGoToHome});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ,
      width: MediaQuery.of(context).size.width * 0.7,
      color: ColorPallete.scaffoldDarkBackGround,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.white,
            alignment: Alignment.center,
            child: Text(
              "News App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onGoToHome();
            },
            child: Row(spacing: 10,
              children: [
                Icon(Icons.home_outlined, size: 30, color: Colors.white),
                Text(
                  "Go To Home",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
