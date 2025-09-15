import 'package:flutter/material.dart';
import '../../domain/entities/user.dart';

/// Card widget for User
class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.user,
    this.onTap,
  });

  final User user;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(user.id.substring(0, 1).toUpperCase()),
        ),
        title: Text('User ${user.id}'),
        subtitle: Text('Created: ${user.createdAt}'),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}