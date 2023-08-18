import 'package:ekomarket/modules/corzina/corzina.dart';
import 'package:ekomarket/modules/corzina/corzina_productitem.dart';
import 'package:ekomarket/modules/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return CartScreen(
          cartItems: [
            CartItem(
              id: 'Цена: 340c за шт',
              title: 'Драконий фрукт',
              price: 250,
              quantity: 2,
              // image: '',
            ),
            CartItem(
              id: 'Цена: 340c за шт',
              title: 'Яблоко золотая радуга',
              price: 112,
              quantity: 1,
              // image: '',
            ),
          ],
          totalAmount: 8.0,
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
        ),
      ],
    ),
  ],
);
