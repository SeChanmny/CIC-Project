import 'package:flutter/material.dart';
import 'package:silver_app_bar/module/login/page/flash_page.dart';

import 'module/login/Util/local_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: FlashScreen()));
}
