import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import '../../profile/page/home_page.dart';
import '../../profile/util/app_color.dart';

class AppbarCic extends StatelessWidget {
  const AppbarCic({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(top: 20),
          width: 100,
          height: 50,
          // color: Colors.green,
          child: const Text('Bonus'),
        ),
        actions: [
          // Container(
          //   margin: const EdgeInsets.only(right: 15),
          //   child: SvgPicture.asset('assets/svg/Bell.svg'),
          // ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: SvgPicture.asset('assets/svg/question.svg'),
          ),
        ],
        backgroundColor: AppColorProfile.mainColor,
        leadingWidth: 90,
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeProfile(),
                    ));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                width: 10,
                height: double.infinity,
                // color: Colors.red,
                child: SvgPicture.asset(
                  'assets/svg/Icon.svg',
                  height: 5,
                  width: 5,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 60,
              height: double.infinity,
              // color: Colors.red,
              child: SvgPicture.asset(
                'assets/svg/cic logo.svg',
                height: 5,
                width: 5,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      );
  }
}