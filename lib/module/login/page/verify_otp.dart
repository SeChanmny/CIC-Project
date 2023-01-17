import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:silver_app_bar/module/login/Util/app_color.dart';
import 'package:silver_app_bar/module/login/controller/base_clinet.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String initialCountry = 'KH';
  bool iszero = false;
  var controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        title: const Text('data'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                // color: Colors.red,
                child: SvgPicture.asset('assets/svg/logo_company.svg'),
              ),
              const SizedBox(
                height: 15,
              ),
              iszero == true
                  ? Container(
                      // width: 100,
                      // height: 100,
                      // color: Colors.red,
                      )
                  : CircularCountDownTimer(
                    
                      duration: 60,
                      initialDuration: 1,
                      controller: controller,
                      width: 60,
                      height: 60,
                      ringColor: Colors.white,
                      ringGradient: null,
                      fillColor: AppColor.mainColor,
                      fillGradient: null,
                      backgroundColor: Colors.transparent,
                      backgroundGradient: null,
                      strokeWidth: 5.0,
                      strokeCap: StrokeCap.square,
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: AppColor.mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textFormat: CountdownTextFormat.MM_SS,
                      isReverse: true,
                      isReverseAnimation: true,
                      isTimerTextShown: true,
                      // autoStart: true,
                      onStart: () {
                        // debugPrint('Countdown Started');
                      },
                      onComplete: () {
                        // debugPrint('Countdown Ended');
                      },
                      onChange: (String timeStamp) {
                        // debugPrint('Countdown Changed $timeStamp');
                      },
                      timeFormatterFunction:
                          (defaultFormatterFunction, duration) {
                        if (duration.inSeconds == 0) {
                          // iszero = false;
                          // controller.pause();

                          iszero = true;

                          Future.delayed(
                            const Duration(
                              milliseconds: 200,
                            ),
                            () {
                              setState(() {});
                            },
                          );
                          return "0";
                        } else {
                          return Function.apply(
                              defaultFormatterFunction, [duration]);
                        }
                      },
                    ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Verify Phone Number',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Code  is Sent to  ',
                    style: TextStyle(
                      color: AppColor.darkColor,
                    ),
                  ),
                  Text(
                    '$dailCode${(phoneController.text).replaceAll(regexp, '')}',
                    style: TextStyle(
                        color: AppColor.DarkGrey, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              PinCodeTextField(
                blinkDuration: const Duration(microseconds: 500),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                controller: otpNumber,
                length: 4,
                obscureText: true,
                autoFocus: true,
                pinTheme: PinTheme(
                    inactiveColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    // activeFillColor: Colors.transparent,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeColor: Colors.white,
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.white),
                boxShadows: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 1),
                    blurRadius: 5,
                  )
                ],
                enableActiveFill: true,
                cursorColor: Colors.black,
                appContext: context,
                onChanged: (value) {},
                onCompleted: (value) {
                  onVerifyOTP(context);
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don`t recieve code ?'),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      print('object :$iszero');
                      setState(() {
                        iszero = false;
                        otpNumber.text = '';
                        // otpNumber.clear();
                      });
                      onRequest();

                      // CircularCountDownTimer(
                      //   duration: 7,
                      //   initialDuration: 0,
                      //   controller: controller,
                      //   width: 60,
                      //   height: 60,
                      //   ringColor: Colors.white,
                      //   ringGradient: null,
                      //   fillColor: AppColor.mainColor,
                      //   fillGradient: null,
                      //   backgroundColor: Colors.transparent,
                      //   backgroundGradient: null,
                      //   strokeWidth: 5.0,
                      //   strokeCap: StrokeCap.square,
                      //   textStyle: TextStyle(
                      //     fontSize: 12.0,
                      //     color: AppColor.mainColor,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      //   textFormat: CountdownTextFormat.MM_SS,
                      //   isReverse: true,
                      //   isReverseAnimation: true,
                      //   isTimerTextShown: true,
                      //   // autoStart: true,
                      //   onStart: () {
                      //     // debugPrint('Countdown Started');
                      //   },
                      //   onComplete: () {
                      //     // debugPrint('Countdown Ended');
                      //   },
                      //   onChange: (String timeStamp) {
                      //     // debugPrint('Countdown Changed $timeStamp');
                      //   },
                      //   timeFormatterFunction:
                      //       (defaultFormatterFunction, duration) {
                      //     if (duration.inSeconds == 0) {
                      //       // iszero = false;
                      //       // controller.pause();

                      //       iszero = true;

                      //       Future.delayed(
                      //         const Duration(
                      //           milliseconds: 200,
                      //         ),
                      //         () {
                      //           setState(() {});
                      //         },
                      //       );
                      //       return "0";
                      //     } else {
                      //       return Function.apply(
                      //           defaultFormatterFunction, [duration]);
                      //     }
                      //   },
                      // );

                      // const CustomTextFiled(enabled: true);
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) {
                      //     return const login();
                      //   },
                      // ));
                    },
                    child: Text(
                      'Request Again',
                      style: iszero == true
                          ? TextStyle(color: AppColor.mainColor)
                          : TextStyle(
                              color: AppColor.DarkGrey.withOpacity(0.5),
                            ),
                    ),
                  ),
                ],
              )

              // const PhoneFieldHint(),
              // const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
