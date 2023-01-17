import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/module/login/controller/getx_controller.dart';
import 'package:silver_app_bar/module/login/widget/customtextfield.dart';

class EditProfileReal extends StatefulWidget {
  const EditProfileReal({super.key});
  @override
  State<EditProfileReal> createState() => _EditProfileRealState();
}

class _EditProfileRealState extends State<EditProfileReal> {
  final con = Get.put(ProfileController());

  String? getInit1 = '';
  String? getInit2 = '';
  String? getInit3 = '';
  String? getInit4 = '';
  String? getInit5 = '';
  String? getInit6 = '';
  @override
  void initState() {
    con.isButttonDisable = false;
    con.userComparemodel.value = con.usermodel.value;
    // con.fullname.text = con.usermodel.value.fullName.toString();

    print('print');
    print('aaaaaaaaaaaaaaaaaaaaaaaaa${con.userComparemodel.value.fullName}');

    // TODO: implement initState
    super.initState();
  }

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
          style: TextStyle(
            color: Color(0xff0D1F3C),
          ),
        ),
        actions: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: InkWell(
                onTap: con.usermodel.value != con.userComparemodel.value
                    ? () {
                        con.updateProfile(context);
                      }
                    : null,
                child: Text(
                  'Done',
                  style: TextStyle(
                      fontSize: 18,
                      color: con.usermodel.value != con.userComparemodel.value
                          ? Colors.blue
                          : Colors.grey,
                      //  con.isButttonDisable == false
                      //     ? Colors.grey
                      //     : Colors.blue,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Obx(
        () => SingleChildScrollView(
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
                        border: Border.all(
                            width: 3, color: const Color(0xff0F50A4)),
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
                height: 40,
              ),
              CustomTextFiled(
                // controller: con.fullname,
                labelText: 'Name',
                enabled: true,
                hintText: 'Name',
                color: Colors.red,
                initialValue: con.userComparemodel.value.fullName,
                filled: true,
                onChanged: (v) {
                  if (v != "") {
                    con.userComparemodel.value =
                        con.userComparemodel.value.copyWith(fullName: v);
                  }
                  // setState(() {
                  //   if (con.fullname.text == con.usermodel.value.fullName) {
                  //     con.isButttonDisable = false;
                  //   } else {
                  //     con.isButttonDisable = true;
                  //   }
                  //   // if (v == '') {
                  //   //   getInit1 = '';
                  //   // } else {
                  //   //   getInit1 = v;
                  //   // }
                  // });
                },
              ),
              CustomTextFiled(
                // controller: con.khmername,
                labelText: 'Title',
                enabled: true,
                hintText: 'Title',
                color: Colors.red,
                initialValue: con.userComparemodel.value.fullName,
                filled: true,
                onChanged: (v) {
                  if (v != '') {
                    con.userComparemodel.value =
                        con.userComparemodel.value.copyWith(fullName: v);
                  }
                  // setState(() {
                  //   if (v == '') {
                  //     getInit2 = '';
                  //   } else {
                  //     getInit2 = v;
                  //   }
                  // });
                },
              ),
              CustomTextFiled(
                controller: con.companyname,
                labelText: 'Company Name',
                enabled: true,
                hintText: 'Company Name',
                color: Colors.red,
                //initialValue: getInit3,
                filled: true,
                onChanged: (v) {
                  setState(() {
                    if (v == '') {
                      getInit3 = '';
                    } else {
                      getInit3 = v;
                    }
                  });
                },
              ),
              CustomTextFiled(
                labelText: 'Phone Number ',
                enabled: false,
                hintText: 'Phone number',
                color: Colors.red,
                // initialValue: getInit4,
                filled: true,
                onChanged: (v) {
                  setState(() {
                    if (v == '') {
                      getInit4 = '';
                    } else {
                      getInit4 = v;
                    }
                  });
                },
              ),
              CustomTextFiled(
                labelText: 'Telegram ',
                enabled: true,
                hintText: 'Telegram',
                color: Colors.red,
                // initialValue: getInit5,
                filled: true,
                onChanged: (v) {
                  setState(() {
                    if (v == '') {
                      getInit5 = '';
                    } else {
                      getInit5 = v;
                    }
                  });
                },
              ),
              CustomTextFiled(
                labelText: 'Website ',
                enabled: true,
                hintText: 'Website',
                color: Colors.red,
                //  initialValue: getInit6,
                filled: true,
                onChanged: (v) {
                  setState(
                    () {
                      if (v == '') {
                        getInit6 = '';
                      } else {
                        getInit6 = v;
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
