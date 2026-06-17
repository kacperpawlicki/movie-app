import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/core/router/app_router.dart';

void main() async{
  await dotenv.load(fileName: ".env");
  configureDependencies();
  runApp(MaterialApp.router(routerConfig: router));
}