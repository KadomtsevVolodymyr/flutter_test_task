import 'package:flutter_test_task/data/datasource/local/facade/shared_storage_inreface.dart';
import 'package:flutter_test_task/data/datasource/local/shared_storage.dart';
import 'package:flutter_test_task/domain/repositories/coin_repository_interface.dart';

class CoinRepository implements ICoinRepository {
  CoinRepository(this.localStorage);

  final SharedStorage localStorage;

  @override
  Future<double> getCoinBalance() => localStorage.getCoinBalance();

  @override
  Future<void> updateCoinBalance(double amount) =>
      localStorage.setCoinBalance(amount);

  @override
  Future<void> updateCoinBalanceAfterSpin(double spinCost) async {
    final double currentBalance = await localStorage.getCoinBalance();
    final double balanceAfterSpin = currentBalance - spinCost;
    await localStorage.setCoinBalance(balanceAfterSpin);
  }

  @override
  Future<void> updateCoinBalanceAfterWin(double winAmount) async {
    final double currentBalance = await localStorage.getCoinBalance();
    final double balanceAfterWin = currentBalance + winAmount;
    await localStorage.setCoinBalance(balanceAfterWin);
  }

  @override
  Future<void> buyCoins(double purchaseAmount) async {
    final double currentBalance = await localStorage.getCoinBalance();
    final double balanceAfterStore = currentBalance + purchaseAmount;
    await localStorage.setCoinBalance(balanceAfterStore);
  }

  @override
  Future<void> initializeFirstTimeBalance() async {
    final double currentBalance = await getCoinBalance();
    if (currentBalance == 0.0) {
      await localStorage.setCoinBalance(1000.0);
    }
  }
}
