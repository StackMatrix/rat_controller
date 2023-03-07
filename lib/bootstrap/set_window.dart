import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';

class SetWindow extends GetxService {
  Future<void> initialize() async {
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      await DesktopWindow.setMinWindowSize(const Size(385, 739));
      await DesktopWindow.setMaxWindowSize(const Size(385, 739));
      // await DesktopWindow.setWindowSize(const Size(414, 739));
    }
  }
}