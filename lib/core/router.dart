import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'presentation/screens/main_screen.dart';
import 'presentation/user/user_list_page.dart';
import 'presentation/task/task_list_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/users',
      builder: (context, state) => UserListPage(),
    ),
    GoRoute(
      path: '/tasks',
      builder: (context, state) => TaskListPage(),
    ),
  ],
);