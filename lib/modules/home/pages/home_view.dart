import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/app_assets.dart';
import 'package:newsapp/core/theme_manager/color_pallate.dart';
import 'package:newsapp/models/category_data.dart';
import 'package:newsapp/modules/home/pages/myDrawerView.dart';
import 'package:newsapp/modules/home/widgets/category_card_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CategoryData? selectedCategory;
  List<CategoryData> categoriesDataList = [
    CategoryData(id: "general", title: "General", image: AppAssets.general),
    CategoryData(id: "business", title: "Business", image: AppAssets.business),
    CategoryData(id: "sports", title: "Sports", image: AppAssets.sports),
    CategoryData(id: "health", title: "Health", image: AppAssets.health),
    CategoryData(id: "science", title: "Science", image: AppAssets.science),
    CategoryData(
      id: "technology",
      title: "Technology",
      image: AppAssets.technology,
    ),
    CategoryData(
      id: "entertainment",
      title: "Entertainment",
      image: AppAssets.entertainment,
    ),
  ];

  void onClickedCategory(CategoryData categoryData) {
    setState(() {
      selectedCategory = categoryData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(AppAssets.searchIcn, width: 24, height: 24),
          ),
        ],
      ),
      drawer: MyDrawerView(
        onGoToHome: (){
          setState(() {
            selectedCategory = null ;
          });
          Navigator.pop(context);
        },
      ),
      body: selectedCategory == null
          ? Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning \nHere is Some News For You",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: ColorPallete.generalTextColor,
                ),
              ),
              SizedBox(height: 20), // Added spacing for better visual hierarchy
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CategoryCardItem(
                    index: index,
                    onTap: onClickedCategory,
                    categoryData: categoriesDataList[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15);
                },
                itemCount: categoriesDataList.length,
              ),
            ],
          ),
        ),
      )
          : Text("Hello"), // You'll want to replace this with actual content
    );
  }
}