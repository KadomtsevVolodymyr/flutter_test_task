import 'package:flutter/material.dart';
import 'package:flutter_test_task/app_entry.dart';
import 'package:flutter_test_task/data/datasource/local/shared_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await configureApp();
  await SharedStorage.initialize();
  runApp(AppEntry());
}

Future configureApp() async {
  await Hive.initFlutter();
}
