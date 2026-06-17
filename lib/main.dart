import 'package:flutter/material.dart';
import 'package:movie_app/core/injection/injection.dart';
import 'package:movie_app/core/router/app_router.dart';

void main() {
  configureDependencies();
  runApp(MaterialApp.router(routerConfig: router));
}