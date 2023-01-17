import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:silver_app_bar/module/login/controller/base_clinet.dart';

class login extends StatelessWidget {
  const login({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Text(
                'Welcome',
                style: TextStyle(color: Colors.blue),
              ),
              Text(
                'CIC Mobile App',
                style: TextStyle(
                    color: Colors.blue[900], fontWeight: FontWeight.bold),
              ),
              FadeInDown(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(color: Colors.white12),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white10,
                        blurRadius: 11,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 0,
                          left: 7,
                          child: Text(
                            'Enter Phone Number',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: InternationalPhoneNumberInput(
                            keyboardType: TextInputType.phone,
                            initialValue: number,
                            textFieldController: phoneController,
                            selectorConfig: const SelectorConfig(
                              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                            ),
                            formatInput: true,
                            onInputChanged: (PhoneNumber value) {
                              dailCode = value.dialCode;
                              // debugPrint(value.dialCode);
                            },
                            cursorColor: Colors.black,
                            inputDecoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(bottom: 15, left: 0),
                              border: InputBorder.none,
                              hintText: 'Enter Phone.......',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 30,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            // color: Colors.red,
                            child: InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) {
                                //       return const Password();
                                //     },
                                //   ),
                                // );
                                setState(() {
                                  onRegister(context).then((value) {
                                    setState(() {});
                                  });
                                });

                                debugPrint('phone++++++:$phoneController');
                              },
                              child: isLoadingRegister == true
                                  ? const CircularProgressIndicator()
                                  : SvgPicture.asset(
                                      color: const Color.fromARGB(
                                          255, 21, 81, 131),
                                      'assets/svg/arrow_forward_ios_FILL0_wght400_GRAD0_opsz48.svg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 2,
                color: const Color.fromARGB(255, 25, 92, 146).withOpacity(0.8),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 20, left: 20),
              //   child: TextFormField(
              //     controller: passwordController,
              //     decoration: const InputDecoration(
              //         hintStyle:
              //             TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              //         border: InputBorder.none,
              //         hintText: 'Input enter password'),
              //     autofocus: true,
              //   ),
              // ),
              // MaterialButton(
              //   onPressed: () {
              //     checkPassword();
              //   },
              //   color: Colors.red,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
