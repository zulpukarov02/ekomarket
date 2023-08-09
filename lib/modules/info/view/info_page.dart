import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // void _call() async {
  //   const phoneNumber = 'номер_телефона';
  //   if (await canLaunch('tel:$phoneNumber')) {
  //     await launch('tel:$phoneNumber');
  //   } else {
  //     throw 'Не удалось вызвать номер $phoneNumber';
  //   }
  // }

  // void _openWhatsApp() async {
  //   const phoneNumber = 'номер_телефона';
  //   if (await canLaunch('https://api.whatsapp.com/send?phone=$phoneNumber')) {
  //     await launch('https://api.whatsapp.com/send?phone=$phoneNumber');
  //   } else {
  //     throw 'Не удалось открыть WhatsApp для номера $phoneNumber';
  //   }
  // }

  // void _openInstagram() async {
  //   const instagramAccount = 'название_аккаунта';
  //   if (await canLaunch('https://www.instagram.com/$instagramAccount/')) {
  //     await launch('https://www.instagram.com/$instagramAccount/');
  //   } else {
  //     throw 'Не удалось открыть Instagram для аккаунта $instagramAccount';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/momo.png',
              semanticLabel: "info",
            ),
            SizedBox(height: 20),
            // Positioned(
            //     width: 360,
            //     height: 44,
            //     top: 44,
            //     // right: 0,
            //     // bottom: 0,
            //     // left: 0,
            //     child: Text('info',
            //         style: TextStyle(fontSize: 20, color: Colors.amber))),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Позвонить'), 
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('WhatsApp'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Instagram'),
            ),
          ],
        ),
      ),
    );
  }
}


// class InfoPage extends StatelessWidget {
//   // void _call() async {
//   //   const phoneNumber = 'номер_телефона';
//   //   if (await canLaunch('tel:$phoneNumber')) {
//   //     await launch('tel:$phoneNumber');
//   //   } else {
//   //     throw 'Не удалось вызвать номер $phoneNumber';
//   //   }
//   // }

//   // void _openWhatsApp() async {
//   //   const phoneNumber = 'номер_телефона';
//   //   if (await canLaunch('https://api.whatsapp.com/send?phone=$phoneNumber')) {
//   //     await launch('https://api.whatsapp.com/send?phone=$phoneNumber');
//   //   } else {
//   //     throw 'Не удалось открыть WhatsApp для номера $phoneNumber';
//   //   }
//   // }

//   // void _openInstagram() async {
//   //   const instagramAccount = 'название_аккаунта';
//   //   if (await canLaunch('https://www.instagram.com/$instagramAccount/')) {
//   //     await launch('https://www.instagram.com/$instagramAccount/');
//   //   } else {
//   //     throw 'Не удалось открыть Instagram для аккаунта $instagramAccount';
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Image.asset('assets/images/momo.png'),
//             Text(
//                 'Фрукты, овощи, зелень, сухофрукты а так же сделанные из натуральных ЭКО продуктов (варенье, салаты, соления, компоты и т.д.) можете заказать удобно, качественно и по доступной цене.Готовы сотрудничать взаимовыгодно с магазинами.Наши цены как на рынке.Мы заинтересованы в экономии ваших денег и времени.Стоимость доставки 150 сом и ещё добавлен для окраину города.При отказе подтвержденного заказа более 2-х раз Клиент заносится в чёрный список!!'),
//             // ElevatedButton(
//             //   onPressed: _call,
//             //   child: Text('Позвонить'),
//             // ),
//             // ElevatedButton(
//             //   onPressed: _openWhatsApp,
//             //   child: Text('WhatsApp'),
//             // ),
//             // ElevatedButton(
//             //   onPressed: _openInstagram,
//             //   child: Text('Instagram'),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class InfoPage extends StatelessWidget {
//   const InfoPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Card(
//             child: Image.asset(
//               "assets/images/momo.png",
//               fit: BoxFit.cover,
//               width: 360,
//               height: 270,
//             ),
//           ),
//           Text(
//             "Эко-Маркет",
//             textAlign: TextAlign.start,
//           ),
//           Text(
//               "Фрукты, овощи, зелень, сухофрукты а так же сделанные из натуральных ЭКО продуктов (варенье, салаты, соления, компоты и т.д.) можете заказать удобно, качественно и по доступной цене.Готовы сотрудничать взаимовыгодно с магазинами.Наши цены как на рынке.Мы заинтересованы в экономии ваших денег и времени.Стоимость доставки 150 сом и ещё добавлен для окраину города.При отказе подтвержденного заказа более 2-х раз Клиент заносится в чёрный список!!")
//         ],
//       ),
//     );
//   }
// }
