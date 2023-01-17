import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:silver_app_bar/module/login/controller/base_clinet.dart';
import 'package:silver_app_bar/module/login/page/verify_otp.dart';

class Password extends StatelessWidget {
  const Password({super.key});

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
              const SizedBox(
                height: 10,
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
                          child: Text('Enter Password',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: TextFormField(
                            // obscureText: true,
                            controller: passwordController,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                                border: InputBorder.none,
                                hintText: 'Input enter password'),
                            autofocus: true,
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
                                setState(() {
                                  checkPassword(context).then((value) {
                                    setState(() {});
                                  });
                                });
                              },
                              child: isloadingPassWord == true
                                  ? const CircularProgressIndicator()
                                  : SvgPicture.asset(
                                      color: const Color(0xff0F50A4),
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 220),
                child: InkWell(
                  onTap: () {
                    onRequest().then(
                      (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const VerifyOtp();
                          },
                        ),
                      ),
                    );
                  },
                  child: Text('Forgot Password?',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 25, 92, 146)
                            .withOpacity(0.8),
                      )),
                ),
              ),
            ],
          ),
        )));
  }
}
