part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.showCart() = _ShowCart;
  const factory HomeEvent.updateCart(bool isIncrement , int index) = _UpdateCart;
  
}