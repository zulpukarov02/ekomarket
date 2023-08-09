import 'package:ekomarket/modules/home/view/home_page.dart';
import 'package:ekomarket/modules/info/view/info_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const MyHomePage();
          },
        ),
      ],
    ),
  ],
);
