import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/menu_controller.dart';
import '../widgets/category_menu_list.dart';
import '../widgets/total_price_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final CafeMenuController menuController = Get.find<CafeMenuController>();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Column(
          children: [
            Text(
              'COFFEE MENU',
              style: GoogleFonts.playfairDisplay(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.black87,
              ),
            ),
            Text(
              'Choose your favorite drink',
              style: GoogleFonts.lato(
                fontSize: 14,
                color: Colors.grey[600],
                letterSpacing: 1,
              ),
            ),
          ],
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.blue,
          tabs: const [
            Tab(text: '커피'),
            Tab(text: '에이드'),
            Tab(text: '스무디'),
            Tab(text: '차'),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                CategoryMenuList(
                  category: '커피',
                  menuController: menuController,
                ),
                CategoryMenuList(
                  category: '에이드',
                  menuController: menuController,
                ),
                CategoryMenuList(
                  category: '스무디',
                  menuController: menuController,
                ),
                CategoryMenuList(
                  category: '차',
                  menuController: menuController,
                ),
              ],
            ),
          ),
          TotalPriceBar(controller: menuController),
        ],
      ),
    );
  }
}
