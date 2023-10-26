import 'package:flutter/material.dart';

basicAppBar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    backgroundColor: Colors.transparent,
    // centerTitle: true,
    // leading: simpleIconButton(
    //   Icons.menu,
    //   30,
    //   () => scaffoldKey.currentState?.openDrawer(),
    // ),

    actions: [],
    elevation: 0,
  );
}
