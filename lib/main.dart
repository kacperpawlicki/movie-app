import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/core/theme/app_theme.dart';

void main() async{
  await dotenv.load(fileName: ".env");
  await configureDependencies();
  runApp(
    MaterialApp.router(
      routerConfig: router,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    )
  );
}