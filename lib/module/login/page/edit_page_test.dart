import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silver_app_bar/module/login/widget/Custom_TextField_Test.dart';

class TestProfile extends StatefulWidget {
  const TestProfile({super.key});

  @override
  State<TestProfile> createState() => _EditProfileRealState();
}

class _EditProfileRealState extends State<TestProfile> {
  String? getInit = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin:
              const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 20),
          width: 10,
          height: 10,
          child: SvgPicture.asset('assets/svg/Close-Icon.svg'),
        ),
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Color(0xff0D1F3C)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 15, right: 15),
            child: Text(
              'Done',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff0F50A4),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              width: double.infinity,
              height: 124,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 3, color: const Color(0xff0F50A4)),
                      color: Colors.green,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/id/1329622588/photo/portrait-beautiful-young-woman-with-clean-fresh-skin.jpg?s=612x612&w=0&k=20&c=9AoxkXBKOdFrqddZt3_R9S0FpDFpFuPS9hGgQjoeNCo='),
                          fit: BoxFit.contain)),
                ),
              ),
            ),
            const Text(
              'Change Profile Photo',
              style: TextStyle(
                  color: Color(0xff0F50A4), fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            TestTextField(
              labelText: 'labelText',
              initialValue: getInit,
              onChanged: (v) {
                setState(() {
                  if (v == '') {
                    getInit = '';
                  } else {
                    getInit = v;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
