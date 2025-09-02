import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/core/theme_manager/color_pallate.dart';
import 'package:newsapp/models/category_data.dart';

class CategoryCardItem extends StatelessWidget {
  final CategoryData categoryData;
  final int index;
  final Function onTap;

  const CategoryCardItem({
    super.key,
    required this.categoryData,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: index % 2 == 0 ? Alignment.bottomRight : Alignment.bottomLeft,
      height: 220,
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 24, right: 8, left: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: AssetImage(categoryData.image),
          fit: BoxFit.cover,
        ),
      ),
      child: GestureDetector(
        onTap: (){
          onTap(categoryData);
        },
        child: Container(
          height: 54,
          width: 169,
          padding: EdgeInsets.symmetric(vertical: 0),
          decoration: BoxDecoration(
            color: ColorPallete.viewBackGr,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(24),
              bottomLeft: Radius.circular(24),
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: Row(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 16),
              Text(
                "View All",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_forward_ios, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
