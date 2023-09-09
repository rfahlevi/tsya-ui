// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tsya/constant/constant.dart';

import 'package:tsya/theme/colors.dart';
import 'package:tsya/theme/textstyle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> menuIcon = [
      'assets/icons/ic_tsya_partner.png',
      'assets/icons/ic_luxury_ballroom.png',
      'assets/icons/ic_meeting_room.png',
      'assets/icons/ic_private_boat.png',
      'assets/icons/ic_private_helicopter.png',
      'assets/icons/ic_private_jet.png',
      'assets/icons/ic_super_car.png',
      'assets/icons/ic_luxury_car.png',
      'assets/icons/ic_transfer_bank.png',
    ];
    List<String> menuLabel = [
      'TSYA PARTNER',
      'LUXURY\nBALLROOM',
      'MEETING ROOM',
      'PRIVATE BOAT',
      'PRIVATE\nHELICOPTER',
      'PRIVATE JET',
      'SUPER CAR',
      'LUXURY CAR',
      'TRANSFER BANK',
    ];

    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: AppColor.white,
        elevation: 5,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Row(
            children: [
              // Logo
              FadeInImage(
                placeholder: const AssetImage('assets/images/img_fade.png'),
                image: const AssetImage('assets/images/img_tsya.png'),
                width: MediaQuery.of(context).size.width / 4,
                fit: BoxFit.fitWidth,
              ),
              const Spacer(),
              // Point Collect
              InkWell(
                onTap: () => AppAlert.comingsoon(context),
                borderRadius: BorderRadius.circular(7),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColor.grey,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        MdiIcons.starFourPointsCircleOutline,
                        color: AppColor.black,
                        size: 14,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        '0 Point',
                        style: AppText.darkSemiBold.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              // Avatar
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.only(left: 7),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/img_user.jpg'),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Field
              const SearchTextfield(),
              const SizedBox(height: 14),
              // Card
              const TsyaCard(),
              const SizedBox(height: 24),
              // Menu
              TsyaMenu(menuLabel: menuLabel, menuIcon: menuIcon),
              const TsyaAdvertising(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(right: 14),
        width: MediaQuery.of(context).size.width - 60,
        height: 40,
        decoration: BoxDecoration(
          color: AppColor.grey,
          borderRadius: BorderRadius.circular(14),
        ),
        alignment: Alignment.center,
        child: TextField(
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          cursorColor: AppColor.primary,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              enabled: true,
              prefixIcon: Container(
                width: 50,
                height: 40,
                margin: const EdgeInsets.only(right: 7),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                  ),
                  boxShadow: [
                    BoxShadow(offset: const Offset(3.0, 0), blurRadius: 2.0, color: AppColor.black.withAlpha(60))
                  ],
                  color: AppColor.grey,
                ),
                child: Icon(
                  MdiIcons.magnify,
                  color: AppColor.black,
                  size: 24,
                ),
              ),
              alignLabelWithHint: true,
              hintTextDirection: TextDirection.rtl,
              hintText: 'Search',
              hintStyle: AppText.darkMedium.copyWith(fontSize: 14)),
        ),
      ),
    );
  }
}

class TsyaCard extends StatelessWidget {
  const TsyaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => AppAlert.comingsoon(context),
            splashColor: AppColor.white.withAlpha(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                      height: 24,
                      child: FadeInImage(
                        placeholder: AssetImage('assets/images/img_fade.png'),
                        image: AssetImage('assets/icons/ic_tsya_saldo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Tsya Saldo',
                      style: AppText.lightSemiBold.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Rp',
                        style: AppText.lightMedium,
                      ),
                      TextSpan(
                        text: '0',
                        style: AppText.lightSemiBold.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Klik untuk detail',
                  style: AppText.lightRegular.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            width: 2,
            height: 75,
            decoration: const BoxDecoration(
              color: AppColor.secondary,
            ),
          ),
          InkWell(
            onTap: () => AppAlert.comingsoon(context),
            splashColor: AppColor.white.withAlpha(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FadeInImage(
                  placeholder: AssetImage('assets/images/img_fade.png'),
                  image: AssetImage('assets/icons/ic_topup_saldo.png'),
                  width: 30,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  'Topup \n Saldo',
                  style: AppText.lightSemiBold.copyWith(
                    fontSize: 12,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () => AppAlert.comingsoon(context),
            splashColor: AppColor.white.withAlpha(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FadeInImage(
                  placeholder: AssetImage('assets/images/img_fade.png'),
                  image: AssetImage('assets/icons/ic_transfer_saldo.png'),
                  width: 30,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  'Transafer \n Saldo',
                  style: AppText.lightSemiBold.copyWith(
                    fontSize: 12,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () => AppAlert.comingsoon(context),
            splashColor: AppColor.white.withAlpha(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FadeInImage(
                  placeholder: AssetImage('assets/images/img_fade.png'),
                  image: AssetImage('assets/icons/ic_mutasi_saldo.png'),
                  width: 30,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  'Mutasi \n Saldo',
                  style: AppText.lightSemiBold.copyWith(
                    fontSize: 12,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TsyaMenu extends StatelessWidget {
  final List<String> menuLabel;
  final List<String> menuIcon;
  const TsyaMenu({
    Key? key,
    required this.menuLabel,
    required this.menuIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: menuLabel.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => AppAlert.comingsoon(context),
          splashColor: AppColor.primary.withAlpha(30),
          child: Column(
            children: [
              FadeInImage(
                placeholder: const AssetImage('assets/images/img_fade.png'),
                image: AssetImage(menuIcon[index]),
                width: 70,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 7),
              Text(
                menuLabel[index],
                style: AppText.darkSemiBold.copyWith(
                  fontSize: 12,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}

class TsyaAdvertising extends StatelessWidget {
  const TsyaAdvertising({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('BEST OFFER TODAY', style: AppText.darkSemiBold),
        const SizedBox(height: 7),
        GestureDetector(
          onTap: () => AppAlert.comingsoon(context),
          child: FadeInImage(
            placeholder: const AssetImage('assets/images/img_fade.png'),
            image: const AssetImage('assets/images/img_advertising.png'),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
