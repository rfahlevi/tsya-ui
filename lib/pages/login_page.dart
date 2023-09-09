import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tsya/theme/colors.dart';
import 'package:tsya/theme/textstyle.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHide = false;
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        title: Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColor.primary.withAlpha(50),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Icon(
                MdiIcons.close,
                color: AppColor.primary,
                size: 21,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Masuk ke Tsya',
              style: AppText.darkSemiBold.copyWith(fontSize: 20),
            ),
            const SizedBox(height: 24),
            Text('Email', style: AppText.darkMedium.copyWith(fontSize: 16)),
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 50,
              child: TextField(
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                cursorColor: AppColor.primary,
                decoration: InputDecoration(
                  isDense: true,
                  alignLabelWithHint: true,
                  hintText: 'Masukkan email Anda',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: AppColor.grey,
                    ),
                  ),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: AppColor.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: AppColor.primary,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text('Kata Sandi', style: AppText.darkMedium.copyWith(fontSize: 16)),
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 50,
              child: TextField(
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                obscureText: isHide ? true : false,
                cursorColor: AppColor.primary,
                decoration: InputDecoration(
                  isDense: true,
                  alignLabelWithHint: true,
                  hintText: 'Masukkan kata sandi Anda',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: AppColor.grey,
                    ),
                  ),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: AppColor.grey,
                    ),
                  ),
                  suffixIconColor: AppColor.black.withAlpha(100),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isHide = !isHide;
                      });
                    },
                    child: Icon(
                      isHide ? MdiIcons.eyeOutline : MdiIcons.eyeOffOutline,
                      size: 24,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(
                      color: AppColor.primary,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  activeColor: AppColor.primary,
                  value: isCheck,
                  onChanged: (_) {
                    setState(() {
                      isCheck = !isCheck;
                    });
                  },
                ),
                Text(
                  'Ingat Saya',
                  style: AppText.darkRegular,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lupa Kata Sandi?',
                    style: AppText.primaryMedium,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Sudah punya akun? ',
                      style: AppText.darkRegular,
                    ),
                    TextSpan(
                      text: 'Daftar',
                      style: AppText.primaryMedium,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 14),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      )),
                  child: Text(
                    'Masuk',
                    style: AppText.lightSemiBold.copyWith(fontSize: 14),
                  )),
            ),
            const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}
