import 'package:flutter/material.dart';
import 'package:silver_app_bar/module/login/Util/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TestPage extends StatelessWidget {
  TestPage({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
            child: ListView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  width: 400,
                  height: 4,
                  color: Colors.green,
                  child: const Image(
                    image: NetworkImage(
                        'https://wallpaperaccess.com/full/138728.jpg'),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 10,
            axisDirection: Axis.horizontal,
            effect: ExpandingDotsEffect(
              activeDotColor: AppColor.darkColor,
              dotHeight: 10,
              dotWidth: 10,
            ),
          )
        ],
      ),
    );
  }
}
