import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// @author luwenjie on 2023/9/14 22:47:54

final appEnv = _AppEnv();

class _AppEnv {
  String _version = "";
  String _buildCode = "";
  int utcDeltaSeconds = 0;

  String get version => _version;

  String get buildCode => _buildCode;

  Future<void> init() async {
    await PackageInfo.fromPlatform().then((value) {
      _version = value.version;
      _buildCode = value.buildNumber;
    });
  }

  get isDebug => kDebugMode;

  get isRelease => kReleaseMode;

  get isAndroid => kIsWeb ? false : Platform.isAndroid;

  get isWindows => kIsWeb ? false : Platform.isWindows;

  get isMobile => kIsWeb ? false : Platform.isAndroid || Platform.isIOS;

  get isDesktop => kIsWeb
      ? false
      : Platform.isLinux || Platform.isWindows || Platform.isMacOS;
}
