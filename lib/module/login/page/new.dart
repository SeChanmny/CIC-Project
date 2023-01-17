import 'package:flutter/material.dart';
import 'package:silver_app_bar/module/login/page/edit_profile_real.dart';

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const EditProfileReal();
              },
            ),
          );
        },
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 50,
                height: 50,
                color: Colors.yellow,
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pushNamed('profile');
                  },
                  child: const Text('click'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
