abstract interface class ICoinRepository {
  Future<double> getCoinBalance();
  Future<void> updateCoinBalance(double amount);
  Future<void> updateCoinBalanceAfterWin(double winAmount);
  Future<void> updateCoinBalanceAfterSpin(double spinCost);
  Future<void> initializeFirstTimeBalance();
  Future<void> buyCoins(double purchaseAmount);
}
