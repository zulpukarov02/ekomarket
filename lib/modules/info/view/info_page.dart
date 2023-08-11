import 'package:ekomarket/theme/custom/app_colors.dart';
import 'package:ekomarket/theme/custom/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/momo.png',
              semanticLabel: "info",
              width: double.infinity,
              height: 270,
              fit: BoxFit.cover,
            ),

            const Padding(
              padding: EdgeInsets.only(left: 16, right: 18, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppText.ekomarket,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                  SizedBox(height: 10),
                  Text(AppText.ekoinfotext,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 131, 126, 126))),
                ],
              ),
            ),

            const SizedBox(height: 20),
            // ... Your other widgets ...

            CustomWidget(
                text: "Позвонить",
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.phone,
                  color: AppColors.ekomarket,
                  size: 25,
                )),
            const SizedBox(height: 20),
            CustomWidget(
                text: "WhatsApp",
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: AppColors.ekomarket,
                  size: 25,
                )),
            const SizedBox(height: 20),
            CustomWidget(
                text: "Instagram",
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.instagram,
                  color: AppColors.ekomarket,
                  size: 28,
                )),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    required this.text,
    this.onPressed,
    required this.icon,
  });
  final String text;
  final void Function()? onPressed;
  final FaIcon icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: 328,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)))),
        onPressed: onPressed,
        // Call the _launchURL function with the phone number
        // _launchURL('tel:номер_телефона');

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 13),
            Text(
              text,
              style: const TextStyle(
                color: AppColors.ekomarket,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
