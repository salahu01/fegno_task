part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) bool showCart,
    @Default(AppDats.products) List<ProductModel> products,
  }) = _HomeState;
}
