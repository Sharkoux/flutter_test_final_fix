import 'package:flutter/material.dart';
import '../../domain/entities/task.dart';

/// Card widget for Task
class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.task,
    this.onTap,
  });

  final Task task;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(task.id.substring(0, 1).toUpperCase()),
        ),
        title: Text('Task ${task.id}'),
        subtitle: Text('Created: ${task.createdAt}'),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}