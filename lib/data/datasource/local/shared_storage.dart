import 'package:flutter/material.dart';
import 'package:flutter_test_task/data/datasource/local/facade/shared_storage_inreface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedStorage {
  static late SharedPreferences _prefs;

  static const _balanceKey = 'coinBalance';
  static final ValueNotifier<double> coinBalanceNotifier = ValueNotifier(0.0);

  /// Initialize SharedPreferences instance
  static Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<double> getCoinBalance() async {
    coinBalanceNotifier.value = _prefs.getDouble(_balanceKey) ?? 0.0;
    return _prefs.getDouble(_balanceKey) ?? 0.0;
  }

  Future<void> setCoinBalance(double value) async {
    coinBalanceNotifier.value = value;
    await _prefs.setDouble(_balanceKey, value);
  }

  Future<void> clearCoinBalance() async {
    await _prefs.remove(_balanceKey);
  }
}
