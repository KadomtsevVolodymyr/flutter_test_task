import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task/domain/repositories/coin_repository_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_cubit.freezed.dart';
part 'store_state.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit(this._coinRepository) : super(const Initial());

  final ICoinRepository _coinRepository;

  Future<void> initializeGame() async {
    await _coinRepository.initializeFirstTimeBalance();
    final coinBalance = await _coinRepository.getCoinBalance();
    // emit(StoreState.loaded(coinBalance: coinBalance));
  }

  Future<void> onSpin() async {
    await _coinRepository.updateCoinBalanceAfterSpin(50);
    final coinBalance = await _coinRepository.getCoinBalance();
    // emit(GameLoaded(coinBalance: coinBalance));
  }

  Future<void> onWin(double winAmount) async {
    await _coinRepository.updateCoinBalanceAfterWin(winAmount);
    final coinBalance = await _coinRepository.getCoinBalance();
    // emit(GameLoaded(coinBalance: coinBalance));
  }

  Future<void> buyCoins(double amount) async {
    await _coinRepository.buyCoins(amount);
    final coinBalance = await _coinRepository.getCoinBalance();
    // emit(GameLoaded(coinBalance: coinBalance));
  }
}
