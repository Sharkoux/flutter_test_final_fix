import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/home_detail_page.dart';
import '../presentation/pages/addtask_detail_page.dart';


class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/home/:id',
        name: 'homeDetail',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return HomeDetailPage(homeId: id);
        },
      ),
      GoRoute(
        path: '/addtask/:id',
        name: 'addtaskDetail',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return AddTaskDetailPage(addtaskId: id);
        },
      ),
    ],
  );
}
