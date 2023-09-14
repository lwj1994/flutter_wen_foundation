import 'package:flutter/cupertino.dart';

import 'foundation.dart';

/// @author luwenjie on 2023/9/15 00:11:57

export "src/toast.dart";
export "src/util/env.dart";
export "src/util/file.dart";
export "src/util/string_extension.dart";
export "src/page/base_page.dart";
export "src/page/view_model.dart";
export "src/async_state/async_state.dart";

Future<void> initialize() async {
  await appEnv.init();
}

Future<void> initializeWithContext(BuildContext context) async {
  await Toast.initialize(context);
}