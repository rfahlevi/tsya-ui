import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tsya/theme/colors.dart';

import '../theme/textstyle.dart';

class AppNav {
  static push(BuildContext context, Widget page) {
    return Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
          pageBuilder: (context, animation, secondaryAnimation) {
            return page;
          },
        ));
  }

  static pushAndRemoveUntil(BuildContext context, Widget page) {
    return Navigator.pushAndRemoveUntil(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
          pageBuilder: (context, animation, secondaryAnimation) {
            return page;
          },
        ),
        (route) => false);
  }
}

class AppAlert {
  static comingsoon(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          title: Center(
            child: Text(
              'Coming Soon !',
              style: AppText.darkSemiBold.copyWith(fontSize: 16),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LottieBuilder.asset(
                'assets/lottie/lottie_commingsoon.json',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 7),
              Text(
                'Fitur ini akan segera hadir...',
                style: AppText.darkRegular.copyWith(fontSize: 16),
              ),
            ],
          ),
          actionsAlignment: MainAxisAlignment.center,
          contentPadding: EdgeInsets.zero,
          actions: [
            ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: Text(
                  'Oke',
                  style: AppText.lightMedium,
                ))
          ],
        );
      },
    );
  }
}
