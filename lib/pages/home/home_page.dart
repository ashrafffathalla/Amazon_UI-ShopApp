import 'package:amazon_ui/pages/home/widgets/app_bar.dart';
import 'package:amazon_ui/pages/home/widgets/book_list.dart';
import 'package:amazon_ui/pages/home/widgets/bottomnavigationbar.dart';
import 'package:amazon_ui/pages/home/widgets/floating_action_buttton.dart';
import 'package:amazon_ui/pages/home/widgets/header.dart';
import 'package:amazon_ui/pages/home/widgets/icons_list.dart';
import 'package:amazon_ui/pages/home/widgets/new_book.dart';
import 'package:amazon_ui/pages/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Image.asset(
          "assets/images/amazon.png",
          height: 25.0,
        ),
        actions:const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage:AssetImage("assets/images/profile.jpeg"),
            ),
          ),
        ],
      ),
      //start build the body
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearchBar(),
            buildIconsList(),
            BuildBookList(),
            BuildNewBook(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:const BuildFAB(),
      bottomNavigationBar: buildNavigationBar(),
      //end build the body
    );
  }
}
