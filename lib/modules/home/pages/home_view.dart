import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/app_assets.dart';
import 'package:newsapp/core/theme_manager/color_pallate.dart';
import 'package:newsapp/models/category_data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<CategoryData> categoriesDataList=[
    CategoryData(id: id, title: title, image: image)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
      child:Image.asset(AppAssets.searchIcn,width: 24,height: 24,),
          )
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning \nHere is Some News For You",
            style:TextStyle(
            fontWeight: FontWeight.w500,
              fontSize: 24,
              color: ColorPallete.generalTextColor
            ),
            )
          ],
        ),
      ),
    );
  }
}
