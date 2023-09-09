import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tsya/constant/constant.dart';
import 'package:tsya/pages/login_page.dart';
import 'package:tsya/theme/colors.dart';
import 'package:tsya/theme/textstyle.dart';

import 'home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.all(0),
        shape: const CircularNotchedRectangle(),
        color: AppColor.primary,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        notchMargin: 8,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          iconSize: 28,
          selectedItemColor: AppColor.secondary,
          unselectedItemColor: AppColor.grey,
          showUnselectedLabels: true,
          selectedLabelStyle: AppText.darkSemiBold.copyWith(fontSize: 12),
          unselectedLabelStyle: AppText.lightRegular.copyWith(fontSize: 12),
          onTap: (value) {
            if (value != 2) {
              setState(() {
                currentIndex = value;
              });
              if (currentIndex == 4) {
                Future.delayed(
                  const Duration(microseconds: 300),
                  () => AppNav.push(context, const LoginPage()),
                );
              }
            }
          },
          items: [
            const BottomNavigationBarItem(
              icon: FadeInImage(
                placeholder: AssetImage('assets/images/img_fade.png'),
                image: AssetImage('assets/icons/ic_home.png'),
                height: 24,
                fit: BoxFit.cover,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: FadeInImage(
                placeholder: AssetImage('assets/images/img_fade.png'),
                image: AssetImage('assets/icons/ic_chat_cs.png'),
                height: 24,
                fit: BoxFit.cover,
              ),
              label: 'Chat CS',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.clipboardText,
                color: Colors.transparent,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: FadeInImage(
                placeholder: AssetImage('assets/images/img_fade.png'),
                image: AssetImage('assets/icons/ic_notification.png'),
                height: 24,
                fit: BoxFit.cover,
              ),
              label: 'Notification',
            ),
            const BottomNavigationBarItem(
              icon: FadeInImage(
                placeholder: AssetImage('assets/images/img_fade.png'),
                image: AssetImage('assets/icons/ic_profil.png'),
                height: 24,
                fit: BoxFit.cover,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => AppAlert.comingsoon(context),
        backgroundColor: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        elevation: 0,
        child: Icon(
          MdiIcons.qrcodeScan,
          color: AppColor.secondary,
          size: 30,
        ),
      ),
      body: body(),
    );
  }

  body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const HomePage();
      case 2:
        return null;
      case 3:
        return const HomePage();
      case 4:
        return const HomePage();

      default:
        return const HomePage();
    }
  }
}
