import 'package:flutter/material.dart';

import 'package:flutter_nim/flutter_nim.dart';
import 'package:flutter_nim_example/utils/user_utils.dart';
import 'package:flutter_nim_example/ui/page_login.dart';
import 'package:flutter_nim_example/ui/page_recent_sessions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final imAccount = await UserUtils.imAccount;
  final imToken = await UserUtils.imToken;

  FlutterNIM().init(
    appKey: "cce777ff988f4bed4fc92c7469272643",
    apnsCername: "PRODUCTION",
    apnsCernameDevelop: "DEVELOPER",
    imAccount: imAccount,
    imToken: imToken,
  );

  bool isLogin = await UserUtils.isLogin();

  if (isLogin) {
    runApp(MyApp());
  } else {
    runApp(LoginHomePage());
  }
}
