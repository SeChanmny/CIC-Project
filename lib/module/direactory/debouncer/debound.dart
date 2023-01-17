// import 'dart:async';

// import 'package:flutter/foundation.dart';

// class Debouncer {
//   Debouncer._();
//   static final instance = Debouncer._();
//   Timer? _timer;

//   void run(int miliSecond, VoidCallback? action) {
//     if (_timer != null) {
//       _timer?.cancel();
//     }
//     _timer = Timer(Duration(milliseconds: miliSecond), () {
//       action?.call();
//     });
//   }
// }

import 'dart:async';
import 'dart:ui';

class Debouncer {
  final int milliseconds;

  Timer? timer;

  Debouncer({this.milliseconds = 0});

  run(VoidCallback action) {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
