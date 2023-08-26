// import 'package:ekomarket/modules/corzina/corzina.dart';
// import 'package:ekomarket/modules/history/history.dart';
// import 'package:ekomarket/modules/home/view/home_page.dart';
// import 'package:ekomarket/modules/info/view/info_page.dart';
// import 'package:go_router/go_router.dart';

// final GoRouter router = GoRouter(routes: [
//   GoRoute(
//     path: '/',
//     builder: (context, state) => const HomePage(),
//   ),
//   GoRoute(
//     path: '/korzina',
//     builder: (context, state) => const CartScreen(),
//   ),
//   GoRoute(
//     path: '/histori',
//     builder: (context, state) => const History(),
//   ),
//   GoRoute(
//     path: '/info',
//     builder: (context, state) => const InfoPage(),
//   ),
// ]);

import 'package:ekomarket/modules/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const BottomNavigeshinbarWidget();
        // return HomePageDetail();
      },
    ),
  ],
);
