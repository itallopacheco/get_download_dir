import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';

class DownloadPath {
  static const MethodChannel _channel = const MethodChannel('download_path');

  static Future<Directory?> downloadsDirectory({String? dirType}) async {
    final String? path = await _channel
        .invokeMethod('getDownloadsDirectory', {'directoryType': dirType});

    return path == null ? null : Directory(path);
  }
}
