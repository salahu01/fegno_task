part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) bool showCart,
    num? selectedCoupon,
    String? deliveryMethord,
    String? takeAwayTime,
    String? instruction,
    bool? orderPlaced,
    @Default(0) int contentsLength,
    @Default(AppDats.products) List<ProductModel> products,
  }) = _HomeState;
}
