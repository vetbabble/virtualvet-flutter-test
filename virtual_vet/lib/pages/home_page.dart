import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:virtual_vet/widgets/completed_tasks.dart';
import 'package:virtual_vet/widgets/left_drawer.dart';
import 'package:virtual_vet/widgets/right_drawer.dart';
import 'package:virtual_vet/widgets/todays_tasks.dart';

import '../utils/utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false, // Remove leading hamburger
          actions: <Widget>[Container()], // Remove trailing hamburger
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Builder(
              builder: (context) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset(
                      "assets/icons/dog_placeholder.png",
                    ),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                  SvgPicture.asset(
                    "assets/icons/logo.svg",
                    height: 30,
                    width: 30,
                  ),
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/oval_button.png',
                          height: 50,
                          width: 50,
                        ),
                        IconButton(
                          icon: Icon(Icons.messenger, color: Colors.white),
                          onPressed: () => Scaffold.of(context).openEndDrawer(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TodaysTasks(),
                Card(
                  child: ListTile(
                      title: Text(
                        "UPCOMING",
                        style: grey,
                      ),
                      leading: Icon(Icons.calendar_today),
                      trailing: Icon(Icons.keyboard_arrow_right)),
                ),
                SizedBox(
                  height: 14,
                ),
                CompletedTasks()
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Stack(
              children: [
                Image.asset(
                  'assets/icons/oval_button.png',
                ),
                Center(
                  child: SvgPicture.asset(
                    'assets/icons/addicon.svg',
                  ),
                )
              ],
            ),
            onPressed: () {},
          ),
        ),
        endDrawer: Drawer(
          child: RightDrawer(),
        ),
        drawer: Drawer(
          child: LeftDrawer(),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue[50],
          shape: CircularNotchedRectangle(),
          notchMargin: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/homeicon.svg',
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/events.svg',
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
