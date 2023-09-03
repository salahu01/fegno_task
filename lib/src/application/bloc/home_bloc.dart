import 'package:bloc/bloc.dart';
import 'package:fegno_task/src/core/constants/app.datas.dart';
import 'package:fegno_task/src/domain/models/product.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeState()) {
    on<_ShowCart>((event, emit) {
      emit(state.copyWith(showCart: !state.showCart));
    });

    on<_UpdateCart>((event, emit) {
      final products = [...state.products];
      if (products[event.index].count == 1 && !event.isIncrement) {
        return;
      }
      final count = event.isIncrement ? products[event.index].count + 1 : products[event.index].count - 1;
      products[event.index] = products[event.index].copyWith(
        count: count,
      );

      emit(state.copyWith(products: products));
    });
  }
}
