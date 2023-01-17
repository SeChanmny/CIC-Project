import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/module/login/page/edit_profile_real.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Util/app_color.dart';
import '../controller/getx_controller.dart';

class MyApp extends StatefulWidget {
  final int? id;
  final String? userName;

  const MyApp({super.key, this.id, this.userName});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = PageController();

  final con = Get.put(ProfileController());
  @override
  void initState() {
    print('===================');
    print(con.getUser(memberId: con.usermodel.value.id));
    con.getUser(memberId: con.usermodel.value.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(con.getUser());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  pinned: true,
                  floating: true,
                  // snap: true,
                  excludeHeaderSemantics: true,
                  backgroundColor: Colors.blue,
                  leading: const Text(''),
                  expandedHeight: 312,
                  elevation: 0,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const EditProfileReal();
                              },
                            ));
                          },
                          child: SvgPicture.asset(
                              'assets/svg/Vector (Stroke).svg')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SvgPicture.asset('assets/svg/Settings 02.svg'),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    //===========Body Cicle Profile==============
                    background: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 270,
                          margin: const EdgeInsets.only(top: 100),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 23, 74, 116),
                                  spreadRadius: 20,
                                  blurRadius: 50,
                                  offset: Offset(0, -9)),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 48),
                                  child: Center(
                                    child: Text(
                                      widget.userName.toString(),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/svg/Shield Done.svg'),
                                      Container(
                                          margin:
                                              const EdgeInsets.only(left: 5),
                                          child:
                                              const Text('Marketing Manager')),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'Cambodia Investors Corporation',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/Call.svg'),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text('Call'),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/Message.svg'),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text('Message'),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/Locations.svg'),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text('Locations'),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/website.svg'),
                                          const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Text('website'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 150,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                              border: Border.all(width: 3, color: Colors.white),
                            ),
                            width: 100,
                            height: 100,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 3, color: Colors.blue),
                                shape: BoxShape.circle,
                                color: Colors.blue,
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://wallpaperaccess.com/full/138728.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 80,
                          left: 225,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: SvgPicture.asset('assets/svg/camera.svg'),
                          ),
                        )
                      ],
                    ),
                    //==============================================
                  ),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 80, left: 20, right: 20),
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: TabBar(
                          labelColor: Colors.black,
                          indicatorColor: Colors.red,
                          indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          tabs: [
                            Tab(
                              text: 'Persional Profile',
                            ),
                            Tab(
                              text: 'Company Profile ',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      // color: Colors.pink,
                      width: double.infinity,
                      height: 610,
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 26),
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'About',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                        'Lorem pisum dolor sit amet, consectetur adpisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscpit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem pisum dolor sit amet, consectetur adpisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscpit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit .'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                // color: Colors.blue,
                                width: double.infinity,
                                height: 70,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png'),
                                              fit: BoxFit.cover),
                                          color: Colors.red,
                                          shape: BoxShape.circle),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cambodia Investors\nCorporation',
                                            style: TextStyle(
                                                color: AppColor.darkColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'Beyond Investment Opportunity',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: AppColor.mainColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    PopupMenuButton<dynamic>(
                                      padding: const EdgeInsets.only(left: 120),
                                      shape: ContinuousRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      iconSize: 25,
                                      itemBuilder: (context) {
                                        return [
                                          PopupMenuItem(
                                            child: ListTile(
                                              leading: Padding(
                                                padding:
                                                    const EdgeInsets.all(1.0),
                                                child: Container(
                                                    child: SvgPicture.asset(
                                                        'assets/svg/phone_smaill.svg')),
                                              ),
                                              title:
                                                  const Text('023 334 56 78'),
                                            ),
                                          ),
                                          const PopupMenuDivider(),
                                          PopupMenuItem(
                                            child: ListTile(
                                              leading: Container(
                                                child: Image.asset(
                                                    'assets/svg/Message.png'),
                                              ),
                                              title:
                                                  const Text('chim@gmail.com'),
                                            ),
                                          ),
                                          const PopupMenuDivider(),
                                          PopupMenuItem(
                                            child: ListTile(
                                              leading: Padding(
                                                padding:
                                                    const EdgeInsets.all(1.0),
                                                child: Container(
                                                    child: SvgPicture.asset(
                                                        'assets/svg/Location.svg')),
                                              ),
                                              title: const Text(
                                                  'cic-association.com'),
                                            ),
                                          ),
                                          const PopupMenuDivider(),
                                          PopupMenuItem(
                                            child: ListTile(
                                              leading: Padding(
                                                padding:
                                                    const EdgeInsets.all(1.0),
                                                child: Container(
                                                    child: SvgPicture.asset(
                                                        'assets/svg/Vectors.svg')),
                                              ),
                                              title: const Text(
                                                  'Edit company info'),
                                            ),
                                          ),
                                          const PopupMenuDivider(),
                                          PopupMenuItem(
                                            child: ListTile(
                                              leading: Padding(
                                                padding:
                                                    const EdgeInsets.all(1.0),
                                                child: Container(
                                                    child: SvgPicture.asset(
                                                        'assets/svg/Edit Square.svg')),
                                              ),
                                              title: Text(
                                                'Edit company info',
                                                style: TextStyle(
                                                    color: AppColor.mainColor),
                                              ),
                                            ),
                                          ),
                                        ];
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 260,
                                      // color: Colors.green,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Product and Service',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida sit tortor nisl fringilla porttitor viverra scelerisque. Turpis nisl et facilisis aliquam ultricies interdum lectus eget facilisis aliquam.',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                fontFamily: 'DM Sans'),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'About',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida sit tortor nisl fringilla porttitor viverra scelerisque. Turpis nisl et facilisis aliquam ultricies interdum lectus eget facilisis aliquam.',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 231,
                                // color: Colors.red,
                                child: ListView.builder(
                                  itemCount: 4,
                                  controller: _controller,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?cs=srgb&dl=pexels-pixabay-206359.jpg&fm=jpg'),
                                              fit: BoxFit.cover),
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      margin: const EdgeInsets.only(
                                          left: 30, top: 10, bottom: 10),
                                      width: 324,
                                      height: 100,
                                    );
                                  },
                                ),
                              ),
                              SmoothPageIndicator(
                                controller: _controller,
                                count: 3,
                                effect: const SlideEffect(
                                  dotHeight: 3,
                                  dotWidth: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 1,
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/home.svg'),
                          const Text('Home'),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/scan_qr.svg',
                            color: Colors.grey,
                          ),
                          const Text('QR Scan'),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.event_note,
                          ),
                          Text('Event'),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/profile.svg'),
                          const Text('Profile'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
