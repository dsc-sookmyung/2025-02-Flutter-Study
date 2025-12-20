import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[TaskTile(), TaskTile(), TaskTile()]);
  }
}