import 'package:flutter/material.dart';
import 'package:virtual_vet/models/task.dart';

import '../utils/utils.dart';

class TodaysTasks extends StatefulWidget {
  @override
  _TodaysTasksState createState() => _TodaysTasksState();
}

class _TodaysTasksState extends State<TodaysTasks> {
  List<Task> tasks = [
    Task("Walk", false, null, null),
    Task("Food", false, null, null),
    Task("Pumpkin", false, null, null),
    Task("Flea Meds", false, null, null),
    Task("Brush Teeth", true, null, null),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TODAY",
                style: primaryGrey,
              ),
              Text(
                "Friday 23, NOV",
                style: secondaryGrey,
              )
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: tasks.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => this.setState(() {
                        tasks[i].completed = !tasks[i].completed;
                      }),
                      child: Row(
                        children: [
                          tasks[i].completed
                              ? Icon(Icons.check_circle_outline,
                                  color: Colors.blue, size: 20)
                              : CircleAvatar(
                                  radius: 10,
                                  backgroundColor:
                                      Theme.of(context).accentColor,
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.white,
                                    size: 19,
                                  ),
                                ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(tasks[i].name.toUpperCase(),
                              style: primaryBlack),
                        ],
                      ),
                    ),
                  );
                },
              ),
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    "EDIT ROUTINE",
                    style: grey,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
