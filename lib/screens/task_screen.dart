import 'package:flutter/material.dart';
import 'package:toto_app_3/models/task.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});

  List<Task> taskList = [
    Task(title: 'Task 1', isDone: false, isDeleted: false),
    Task(title: 'Task 2', isDone: true, isDeleted: false),
    Task(title: 'Task 3', isDone: true, isDeleted: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Chip(
              label: Text('Tasks'),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: taskList.length,
                itemBuilder: (context, index) {
                  var task = taskList[index];
                  return ListTile(
                    title: Text(task.title),
                    trailing:
                        Checkbox(value: task.isDone, onChanged: (value) {}),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
