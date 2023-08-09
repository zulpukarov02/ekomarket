import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  // ... Your _launchURL function ...

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
            // ... Your other widgets ...

            ElevatedButton(
              onPressed: () {
                // Call the _launchURL function with the phone number
                // _launchURL('tel:номер_телефона');
              },
              child: Text('Позвонить'),
            ),
            ElevatedButton(
              onPressed: () {
                // Open WhatsApp using the _launchURL function
                // _launchURL('https://api.whatsapp.com/send?phone=номер_телефона');
              },
              child: Text('WhatsApp'),
            ),
            ElevatedButton(
              onPressed: () {
                // Open Instagram using the _launchURL function
                // _launchURL('https://www.instagram.com/название_аккаунта/');
              },
              child: Text('Instagram'),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class InfoPage extends StatelessWidget {
//   const InfoPage({super.key});

//   // void _call() async {
//   //   const phoneNumber = 'номер_телефона';
//   //   if (await launch('tel:$phoneNumber')) {
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
//   _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             Image.asset(
//               'assets/images/momo.png',
//               semanticLabel: "info",
//             ),
//             SizedBox(height: 20),
//             // Positioned(
//             //     width: 360,
//             //     height: 44,
//             //     top: 44,
//             //     // right: 0,
//             //     // bottom: 0,
//             //     // left: 0,
//             //     child: Text('info',
//             //         style: TextStyle(fontSize: 20, color: Colors.amber))),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text('Позвонить'),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text('WhatsApp'),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text('Instagram'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
