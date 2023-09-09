import 'package:flutter/material.dart';
import 'package:tsya/constant/constant.dart';
import 'package:tsya/pages/dashboard_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    directToDashboard();
    super.initState();
  }

  // Navigate to Home Page function
  void directToDashboard() async {
    await Future.delayed(
      const Duration(seconds: 5),
      () => AppNav.pushAndRemoveUntil(context, const DashboardPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInImage(
          placeholder: const AssetImage('assets/images/img_fade.png'),
          image: const AssetImage('assets/images/img_tsya.png'),
          width: MediaQuery.of(context).size.width / 3,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
