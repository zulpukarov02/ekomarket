// import 'package:ekomarket/modules/corzina/corzina.dart';
// import 'package:ekomarket/modules/corzina/corzina_productitem.dart';
// import 'package:ekomarket/modules/home/view/home_page.dart';
// <<<<<<< bekturgan
// =======
// import 'package:ekomarket/modules/home/view/home_page_detail.dart';
// import 'package:ekomarket/modules/info/view/info_page.dart';
// >>>>>>> master
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// final GoRouter router = GoRouter(
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/',
//       builder: (BuildContext context, GoRouterState state) {
// <<<<<<< bekturgan
//         return CartScreen(
//           cartItems: [
//             CartItem(
//               id: 'Цена: 340c за шт',
//               title: 'Драконий фрукт',
//               price: 250,
//               quantity: 2,
//               // image: '',
//             ),
//             CartItem(
//               id: 'Цена: 340c за шт',
//               title: 'Яблоко золотая радуга',
//               price: 112,
//               quantity: 1,
//               // image: '',
//             ),
//           ],
//           totalAmount: 8.0,
//         );
// =======
//         // return const HomePage();
//         return HomePageDetail();
// >>>>>>> master
//       },
//       routes: <RouteBase>[
//         GoRoute(
//           path: 'details',
//           builder: (BuildContext context, GoRouterState state) {
//             return const HomePage();
//           },
//         ),
//       ],
//     ),
//   ],
// );


// class AppRouter {
//   const AppRouter();

//   static const String main = '/main';
//   static const String home = '/home';
//   static const String janylmachtar = '/janylmachtar';
//   static const String makaldar = '/makaldar';
//   static const String makaldarDetail = '/makaldarDetail';
//   static const String manas = '/manas';
//   static const String manasDetail = '/manasDetail';
//   static const String tabyshmaktar = '/tabyshmaktar';
//   static const String yrlar = '/yrlar';
//   static const String yrlarDetail = '/yrlarDetail';

//   static const String authentication = '/authentication';

//   static const String category = '/category';
//   static const String categoryDetailElement = '/categoryDetailElement';
//   static const String categoryDetail = '/categoryDetail';
//   static const String fairyTales = '/fairyTales';
//   static const String fairyTalesDetail = '/fairyTalesDetail';

//   static const String setting = '/setting';
//   static const String profil = '/profil';
//   static const String weAbout = '/weAbout';
//   static const String goRegis = '/goRegis';
//   static const String goName = '/goName';
//   static const String goOne = '/goOne';
//   static const String goTwo = '/goTwo';

//   static Route<void> onGenerateRoute(
//     RouteSettings settings,
//   ) {
//     switch (settings.name) {
//       case main:
//         return CupertinoPageRoute(
//           builder: (_) => const MainView(),
//           settings: settings,
//         );
//       case goOne:
//         return CupertinoPageRoute(
//           builder: (_) => const GoOneView(),
//           settings: settings,
//         );
//       case goTwo:
//         return CupertinoPageRoute(
//           builder: (_) => const GoTwoView(),
//           settings: settings,
//         );
//       case goRegis:
//         return CupertinoPageRoute(
//           builder: (_) => const GoRegisView(),
//           settings: settings,
//         );
//       case goName:
//         return CupertinoPageRoute(
//           builder: (_) => const GoNameView(),
//           settings: settings,
//         );
//       case home:
//         return CupertinoPageRoute(
//           builder: (_) => const HomeView(),
//           settings: settings,
//         );
//       case janylmachtar:
//         return CupertinoPageRoute(
//           builder: (_) => const JanylmachtarView(),
//           settings: settings,
//         );
//       case makaldar:
//         return CupertinoPageRoute(
//           builder: (_) => const MakaldarView(),
//           settings: settings,
//         );
//       case makaldarDetail:
//         return CupertinoPageRoute(
//           builder: (_) => const MakaldarDetailView(),
//           settings: settings,
//         );
//       case manas:
//         return CupertinoPageRoute(
//           builder: (_) => const ManasView(),
//           settings: settings,
//         );
//       case manasDetail:
//         return CupertinoPageRoute(
//           builder: (_) => const ManasDetailView(),
//           settings: settings,
//         );
//       case tabyshmaktar:
//         return CupertinoPageRoute(
//           builder: (_) => const TabyshmaktarView(),
//           settings: settings,
//         );
//       case yrlar:
//         return CupertinoPageRoute(
//           builder: (_) => const YrlarView(),
//           settings: settings,
//         );
//       case yrlarDetail:
//         return CupertinoPageRoute(
//           builder: (_) => YrlarDetailView(),
//           settings: settings,
//         );
//       case category:
//         return CupertinoPageRoute(
//           builder: (_) => const CategorysView(),
//           settings: settings,
//         );
//       case categoryDetail:
//         return CupertinoPageRoute(
//           builder: (_) => const CategorysDetailView(),
//           settings: settings,
//         );
//       case categoryDetailElement:
//         return CupertinoPageRoute(
//           builder: (_) => const CategorysDetailElementView(),
//           settings: settings,
//         );
//       case fairyTales:
//         return CupertinoPageRoute(
//           builder: (_) => const FairyTalesView(),
//           settings: settings,
//         );
//       case fairyTalesDetail:
//         return CupertinoPageRoute(
//           builder: (_) => FairryTalesDetailView(),
//           settings: settings,
//         );
//       case profil:
//         return CupertinoPageRoute(
//           builder: (_) => const ProfilView(),
//           settings: settings,
//         );
//       case weAbout:
//         return CupertinoPageRoute(
//           builder: (_) => const WeaboutView(),
//           settings: settings,
//         );

//       default:
//         throw Exception(
//             'no builder specified for route named: [${settings.name}]');
//     }
//   }
// }
