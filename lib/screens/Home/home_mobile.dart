import 'package:flutter/material.dart';
import 'package:portfolio/screens/Home/home_desktop.dart';
import 'package:portfolio/widgets/project_widget.dart';

//WIDGETS
import 'building_blocks.dart' as home;
//CONSTANTS
import '../../constants/strings.dart';

class Home_Mobile extends Home_Desktop {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _getAppBar(),
        drawer: _getDrawerMenu(),
        body: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_getBody()])));
  }

  Drawer _getDrawerMenu() {
    return Drawer(
        child: ListView(
            padding: const EdgeInsets.all(20),
            children: home.getHomeActions()));
  }

  AppBar _getAppBar() {
    return AppBar(
      title: home.buildTitle(),
      titleSpacing: 20.0,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  Widget _getBody() {
    return Container(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              home.ImagePortrait(),
              SizedBox(height: 50),
              home.getAboutMe(),
              SizedBox(height: 50),
              getProjects(),
            ]),
          )),
    );
  }
}