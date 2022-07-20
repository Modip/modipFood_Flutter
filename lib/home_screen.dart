import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:restaurant_app/components/restaurant_appbar.dart';
import 'package:restaurant_app/components/restaurant_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          RestaurantAppBar(),
          SliverToBoxAdapter(
            child: RestaurantInfo(),
          ),
          SliverToBoxAdapter()
        ],
      ),
    );
  }
}
