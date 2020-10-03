import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:virtual_vet/models/menu.dart';
import 'package:virtual_vet/utils/utils.dart';

class LeftDrawer extends StatelessWidget {
  final List<MenuItem> items = [
    MenuItem("Profile", null),
    MenuItem("Add Pet", null),
    MenuItem("Edit Routine", null),
  ];
  final List<MenuItem> items1 = [
    MenuItem("Edit Account", null),
    MenuItem("Privacy Policy", null),
    MenuItem("Terms of Service", null),
    MenuItem("Disclaimer", null),
    MenuItem("Visit Vetbabble", null),
    MenuItem("Sign out", null),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icons/dog_placeholder.png",
                width: 40,
                height: 40,
              ),
              Image.asset(
                "assets/icons/home_cat.png",
                width: 30,
                height: 30,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/real_vet.svg',
                  color: Colors.black,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "PROFILE",
                  style: primaryBlack,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/addicon.svg',
                  color: Colors.black,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "ADD NEW PET",
                  style: primaryBlack,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "EDIT ROUTINE",
                  style: primaryBlack,
                )
              ],
            ),
          ),
          Divider(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: items1.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Text(
                    items1[index].title.toUpperCase(),
                    style: primaryBlack,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
