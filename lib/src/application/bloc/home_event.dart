part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.showCart() = _ShowCart;
  const factory HomeEvent.updateCart(bool isIncrement, int index) = _UpdateCart;
  const factory HomeEvent.showApplyCoupon() = _ShowApplyCoupon;
  const factory HomeEvent.selectCoupon({num? discount}) = _SelectCoupon;
  const factory HomeEvent.selectDeliveryMethord(String deliveryMethird) = _SelectDeliveryMethord;
  const factory HomeEvent.selectTakeAwayTime(String time) = _SelectTakeAwayTime;
}
