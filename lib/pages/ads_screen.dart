import 'package:flutter/material.dart';
import 'package:untitled3/tabs/my_ads_tab.dart';
import 'package:untitled3/tabs/my_fav_tab.dart';

class MyAds extends StatelessWidget {

  final _tabs =[
    MyAdsTab(),
    MyFavTab()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Center(
            child: Text("My Ads",
                style: TextStyle(
                  color: Colors.black,
                )),
          ),
          bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.amber,
              tabs: [
                Tab(
                  text: "My Ads",
                  icon: Icon(Icons.shopping_basket_outlined),
                ),
                Tab(
                  text: "My Fav",
                  icon: Icon(Icons.favorite_outline),
                )
              ]),
        ),
        body: TabBarView(children: _tabs,),
      ),
    );
  }
}
