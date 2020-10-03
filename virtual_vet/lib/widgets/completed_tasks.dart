import 'package:flutter/material.dart';
import 'package:virtual_vet/models/task.dart';
import 'package:virtual_vet/utils/utils.dart';

class CompletedTasks extends StatelessWidget {
  final List<Task> tasks = [
    Task("Denni's Birthday", true, "assets/icons/home_dog.png", "5 PM - 6 PM"),
    Task("Regular Checkup", true, "assets/icons/home_dog.png", "5 PM - 6 PM"),
    Task("Nail's care", true, "assets/icons/home_dog.png", "5 PM - 6 PM"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Recently Completed",
              style: secondaryBlack,
            ),
            Divider(),
            ListView.separated(
              separatorBuilder: (c, i) => Divider(
                height: 0,
              ),
              shrinkWrap: true,
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    tasks[index].img,
                    height: 30,
                    width: 30,
                  ),
                  title: Text(
                    tasks[index].name,
                    style: primaryBlack,
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.query_builder, size: 14, color: Colors.grey),
                      SizedBox(width: 10),
                      Text(
                        tasks[index].time,
                        style: secondaryGrey,
                      ),
                    ],
                  ),
                );
              },
            ),
          ]),
    );
  }
}
