import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:virtual_vet/models/menu.dart';

class RightDrawer extends StatelessWidget {
  final List<MenuItem> items = [
    MenuItem("Virtual Vet", "assets/icons/virtual_vet.svg"),
    MenuItem("Real Vet", "assets/icons/real_vet.svg")
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(items[index].title.toUpperCase()),
          leading: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/icons/oval_button.png',
                width: 80,
                height: 80,
              ),
              SvgPicture.asset(
                items[index].img,
                width: 20,
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
