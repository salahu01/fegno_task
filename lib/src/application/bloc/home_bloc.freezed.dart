// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showCart,
    required TResult Function(bool isIncrement, int index) updateCart,
    required TResult Function() showApplyCoupon,
    required TResult Function(num? discount) selectCoupon,
    required TResult Function(String deliveryMethird) selectDeliveryMethord,
    required TResult Function(String time) selectTakeAwayTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showCart,
    TResult? Function(bool isIncrement, int index)? updateCart,
    TResult? Function()? showApplyCoupon,
    TResult? Function(num? discount)? selectCoupon,
    TResult? Function(String deliveryMethird)? selectDeliveryMethord,
    TResult? Function(String time)? selectTakeAwayTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showCart,
    TResult Function(bool isIncrement, int index)? updateCart,
    TResult Function()? showApplyCoupon,
    TResult Function(num? discount)? selectCoupon,
    TResult Function(String deliveryMethird)? selectDeliveryMethord,
    TResult Function(String time)? selectTakeAwayTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowCart value) showCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_ShowApplyCoupon value) showApplyCoupon,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_SelectDeliveryMethord value)
        selectDeliveryMethord,
    required TResult Function(_SelectTakeAwayTime value) selectTakeAwayTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowCart value)? showCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult? Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowCart value)? showCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ShowCartCopyWith<$Res> {
  factory _$$_ShowCartCopyWith(
          _$_ShowCart value, $Res Function(_$_ShowCart) then) =
      __$$_ShowCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowCartCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_ShowCart>
    implements _$$_ShowCartCopyWith<$Res> {
  __$$_ShowCartCopyWithImpl(
      _$_ShowCart _value, $Res Function(_$_ShowCart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShowCart implements _ShowCart {
  const _$_ShowCart();

  @override
  String toString() {
    return 'HomeEvent.showCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showCart,
    required TResult Function(bool isIncrement, int index) updateCart,
    required TResult Function() showApplyCoupon,
    required TResult Function(num? discount) selectCoupon,
    required TResult Function(String deliveryMethird) selectDeliveryMethord,
    required TResult Function(String time) selectTakeAwayTime,
  }) {
    return showCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showCart,
    TResult? Function(bool isIncrement, int index)? updateCart,
    TResult? Function()? showApplyCoupon,
    TResult? Function(num? discount)? selectCoupon,
    TResult? Function(String deliveryMethird)? selectDeliveryMethord,
    TResult? Function(String time)? selectTakeAwayTime,
  }) {
    return showCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showCart,
    TResult Function(bool isIncrement, int index)? updateCart,
    TResult Function()? showApplyCoupon,
    TResult Function(num? discount)? selectCoupon,
    TResult Function(String deliveryMethird)? selectDeliveryMethord,
    TResult Function(String time)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (showCart != null) {
      return showCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowCart value) showCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_ShowApplyCoupon value) showApplyCoupon,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_SelectDeliveryMethord value)
        selectDeliveryMethord,
    required TResult Function(_SelectTakeAwayTime value) selectTakeAwayTime,
  }) {
    return showCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowCart value)? showCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult? Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
  }) {
    return showCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowCart value)? showCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (showCart != null) {
      return showCart(this);
    }
    return orElse();
  }
}

abstract class _ShowCart implements HomeEvent {
  const factory _ShowCart() = _$_ShowCart;
}

/// @nodoc
abstract class _$$_UpdateCartCopyWith<$Res> {
  factory _$$_UpdateCartCopyWith(
          _$_UpdateCart value, $Res Function(_$_UpdateCart) then) =
      __$$_UpdateCartCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isIncrement, int index});
}

/// @nodoc
class __$$_UpdateCartCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_UpdateCart>
    implements _$$_UpdateCartCopyWith<$Res> {
  __$$_UpdateCartCopyWithImpl(
      _$_UpdateCart _value, $Res Function(_$_UpdateCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isIncrement = null,
    Object? index = null,
  }) {
    return _then(_$_UpdateCart(
      null == isIncrement
          ? _value.isIncrement
          : isIncrement // ignore: cast_nullable_to_non_nullable
              as bool,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateCart implements _UpdateCart {
  const _$_UpdateCart(this.isIncrement, this.index);

  @override
  final bool isIncrement;
  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.updateCart(isIncrement: $isIncrement, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCart &&
            (identical(other.isIncrement, isIncrement) ||
                other.isIncrement == isIncrement) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isIncrement, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCartCopyWith<_$_UpdateCart> get copyWith =>
      __$$_UpdateCartCopyWithImpl<_$_UpdateCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showCart,
    required TResult Function(bool isIncrement, int index) updateCart,
    required TResult Function() showApplyCoupon,
    required TResult Function(num? discount) selectCoupon,
    required TResult Function(String deliveryMethird) selectDeliveryMethord,
    required TResult Function(String time) selectTakeAwayTime,
  }) {
    return updateCart(isIncrement, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showCart,
    TResult? Function(bool isIncrement, int index)? updateCart,
    TResult? Function()? showApplyCoupon,
    TResult? Function(num? discount)? selectCoupon,
    TResult? Function(String deliveryMethird)? selectDeliveryMethord,
    TResult? Function(String time)? selectTakeAwayTime,
  }) {
    return updateCart?.call(isIncrement, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showCart,
    TResult Function(bool isIncrement, int index)? updateCart,
    TResult Function()? showApplyCoupon,
    TResult Function(num? discount)? selectCoupon,
    TResult Function(String deliveryMethird)? selectDeliveryMethord,
    TResult Function(String time)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(isIncrement, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowCart value) showCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_ShowApplyCoupon value) showApplyCoupon,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_SelectDeliveryMethord value)
        selectDeliveryMethord,
    required TResult Function(_SelectTakeAwayTime value) selectTakeAwayTime,
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowCart value)? showCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult? Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
  }) {
    return updateCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowCart value)? showCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class _UpdateCart implements HomeEvent {
  const factory _UpdateCart(final bool isIncrement, final int index) =
      _$_UpdateCart;

  bool get isIncrement;
  int get index;
  @JsonKey(ignore: true)
  _$$_UpdateCartCopyWith<_$_UpdateCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowApplyCouponCopyWith<$Res> {
  factory _$$_ShowApplyCouponCopyWith(
          _$_ShowApplyCoupon value, $Res Function(_$_ShowApplyCoupon) then) =
      __$$_ShowApplyCouponCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowApplyCouponCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_ShowApplyCoupon>
    implements _$$_ShowApplyCouponCopyWith<$Res> {
  __$$_ShowApplyCouponCopyWithImpl(
      _$_ShowApplyCoupon _value, $Res Function(_$_ShowApplyCoupon) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShowApplyCoupon implements _ShowApplyCoupon {
  const _$_ShowApplyCoupon();

  @override
  String toString() {
    return 'HomeEvent.showApplyCoupon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowApplyCoupon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showCart,
    required TResult Function(bool isIncrement, int index) updateCart,
    required TResult Function() showApplyCoupon,
    required TResult Function(num? discount) selectCoupon,
    required TResult Function(String deliveryMethird) selectDeliveryMethord,
    required TResult Function(String time) selectTakeAwayTime,
  }) {
    return showApplyCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showCart,
    TResult? Function(bool isIncrement, int index)? updateCart,
    TResult? Function()? showApplyCoupon,
    TResult? Function(num? discount)? selectCoupon,
    TResult? Function(String deliveryMethird)? selectDeliveryMethord,
    TResult? Function(String time)? selectTakeAwayTime,
  }) {
    return showApplyCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showCart,
    TResult Function(bool isIncrement, int index)? updateCart,
    TResult Function()? showApplyCoupon,
    TResult Function(num? discount)? selectCoupon,
    TResult Function(String deliveryMethird)? selectDeliveryMethord,
    TResult Function(String time)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (showApplyCoupon != null) {
      return showApplyCoupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowCart value) showCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_ShowApplyCoupon value) showApplyCoupon,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_SelectDeliveryMethord value)
        selectDeliveryMethord,
    required TResult Function(_SelectTakeAwayTime value) selectTakeAwayTime,
  }) {
    return showApplyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowCart value)? showCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult? Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
  }) {
    return showApplyCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowCart value)? showCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (showApplyCoupon != null) {
      return showApplyCoupon(this);
    }
    return orElse();
  }
}

abstract class _ShowApplyCoupon implements HomeEvent {
  const factory _ShowApplyCoupon() = _$_ShowApplyCoupon;
}

/// @nodoc
abstract class _$$_SelectCouponCopyWith<$Res> {
  factory _$$_SelectCouponCopyWith(
          _$_SelectCoupon value, $Res Function(_$_SelectCoupon) then) =
      __$$_SelectCouponCopyWithImpl<$Res>;
  @useResult
  $Res call({num? discount});
}

/// @nodoc
class __$$_SelectCouponCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_SelectCoupon>
    implements _$$_SelectCouponCopyWith<$Res> {
  __$$_SelectCouponCopyWithImpl(
      _$_SelectCoupon _value, $Res Function(_$_SelectCoupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = freezed,
  }) {
    return _then(_$_SelectCoupon(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$_SelectCoupon implements _SelectCoupon {
  const _$_SelectCoupon({this.discount});

  @override
  final num? discount;

  @override
  String toString() {
    return 'HomeEvent.selectCoupon(discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCoupon &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCouponCopyWith<_$_SelectCoupon> get copyWith =>
      __$$_SelectCouponCopyWithImpl<_$_SelectCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showCart,
    required TResult Function(bool isIncrement, int index) updateCart,
    required TResult Function() showApplyCoupon,
    required TResult Function(num? discount) selectCoupon,
    required TResult Function(String deliveryMethird) selectDeliveryMethord,
    required TResult Function(String time) selectTakeAwayTime,
  }) {
    return selectCoupon(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showCart,
    TResult? Function(bool isIncrement, int index)? updateCart,
    TResult? Function()? showApplyCoupon,
    TResult? Function(num? discount)? selectCoupon,
    TResult? Function(String deliveryMethird)? selectDeliveryMethord,
    TResult? Function(String time)? selectTakeAwayTime,
  }) {
    return selectCoupon?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showCart,
    TResult Function(bool isIncrement, int index)? updateCart,
    TResult Function()? showApplyCoupon,
    TResult Function(num? discount)? selectCoupon,
    TResult Function(String deliveryMethird)? selectDeliveryMethord,
    TResult Function(String time)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (selectCoupon != null) {
      return selectCoupon(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowCart value) showCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_ShowApplyCoupon value) showApplyCoupon,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_SelectDeliveryMethord value)
        selectDeliveryMethord,
    required TResult Function(_SelectTakeAwayTime value) selectTakeAwayTime,
  }) {
    return selectCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowCart value)? showCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult? Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
  }) {
    return selectCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowCart value)? showCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (selectCoupon != null) {
      return selectCoupon(this);
    }
    return orElse();
  }
}

abstract class _SelectCoupon implements HomeEvent {
  const factory _SelectCoupon({final num? discount}) = _$_SelectCoupon;

  num? get discount;
  @JsonKey(ignore: true)
  _$$_SelectCouponCopyWith<_$_SelectCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectDeliveryMethordCopyWith<$Res> {
  factory _$$_SelectDeliveryMethordCopyWith(_$_SelectDeliveryMethord value,
          $Res Function(_$_SelectDeliveryMethord) then) =
      __$$_SelectDeliveryMethordCopyWithImpl<$Res>;
  @useResult
  $Res call({String deliveryMethird});
}

/// @nodoc
class __$$_SelectDeliveryMethordCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_SelectDeliveryMethord>
    implements _$$_SelectDeliveryMethordCopyWith<$Res> {
  __$$_SelectDeliveryMethordCopyWithImpl(_$_SelectDeliveryMethord _value,
      $Res Function(_$_SelectDeliveryMethord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryMethird = null,
  }) {
    return _then(_$_SelectDeliveryMethord(
      null == deliveryMethird
          ? _value.deliveryMethird
          : deliveryMethird // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectDeliveryMethord implements _SelectDeliveryMethord {
  const _$_SelectDeliveryMethord(this.deliveryMethird);

  @override
  final String deliveryMethird;

  @override
  String toString() {
    return 'HomeEvent.selectDeliveryMethord(deliveryMethird: $deliveryMethird)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectDeliveryMethord &&
            (identical(other.deliveryMethird, deliveryMethird) ||
                other.deliveryMethird == deliveryMethird));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deliveryMethird);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectDeliveryMethordCopyWith<_$_SelectDeliveryMethord> get copyWith =>
      __$$_SelectDeliveryMethordCopyWithImpl<_$_SelectDeliveryMethord>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showCart,
    required TResult Function(bool isIncrement, int index) updateCart,
    required TResult Function() showApplyCoupon,
    required TResult Function(num? discount) selectCoupon,
    required TResult Function(String deliveryMethird) selectDeliveryMethord,
    required TResult Function(String time) selectTakeAwayTime,
  }) {
    return selectDeliveryMethord(deliveryMethird);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showCart,
    TResult? Function(bool isIncrement, int index)? updateCart,
    TResult? Function()? showApplyCoupon,
    TResult? Function(num? discount)? selectCoupon,
    TResult? Function(String deliveryMethird)? selectDeliveryMethord,
    TResult? Function(String time)? selectTakeAwayTime,
  }) {
    return selectDeliveryMethord?.call(deliveryMethird);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showCart,
    TResult Function(bool isIncrement, int index)? updateCart,
    TResult Function()? showApplyCoupon,
    TResult Function(num? discount)? selectCoupon,
    TResult Function(String deliveryMethird)? selectDeliveryMethord,
    TResult Function(String time)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (selectDeliveryMethord != null) {
      return selectDeliveryMethord(deliveryMethird);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowCart value) showCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_ShowApplyCoupon value) showApplyCoupon,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_SelectDeliveryMethord value)
        selectDeliveryMethord,
    required TResult Function(_SelectTakeAwayTime value) selectTakeAwayTime,
  }) {
    return selectDeliveryMethord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowCart value)? showCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult? Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
  }) {
    return selectDeliveryMethord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowCart value)? showCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (selectDeliveryMethord != null) {
      return selectDeliveryMethord(this);
    }
    return orElse();
  }
}

abstract class _SelectDeliveryMethord implements HomeEvent {
  const factory _SelectDeliveryMethord(final String deliveryMethird) =
      _$_SelectDeliveryMethord;

  String get deliveryMethird;
  @JsonKey(ignore: true)
  _$$_SelectDeliveryMethordCopyWith<_$_SelectDeliveryMethord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectTakeAwayTimeCopyWith<$Res> {
  factory _$$_SelectTakeAwayTimeCopyWith(_$_SelectTakeAwayTime value,
          $Res Function(_$_SelectTakeAwayTime) then) =
      __$$_SelectTakeAwayTimeCopyWithImpl<$Res>;
  @useResult
  $Res call({String time});
}

/// @nodoc
class __$$_SelectTakeAwayTimeCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_SelectTakeAwayTime>
    implements _$$_SelectTakeAwayTimeCopyWith<$Res> {
  __$$_SelectTakeAwayTimeCopyWithImpl(
      _$_SelectTakeAwayTime _value, $Res Function(_$_SelectTakeAwayTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$_SelectTakeAwayTime(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectTakeAwayTime implements _SelectTakeAwayTime {
  const _$_SelectTakeAwayTime(this.time);

  @override
  final String time;

  @override
  String toString() {
    return 'HomeEvent.selectTakeAwayTime(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectTakeAwayTime &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectTakeAwayTimeCopyWith<_$_SelectTakeAwayTime> get copyWith =>
      __$$_SelectTakeAwayTimeCopyWithImpl<_$_SelectTakeAwayTime>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showCart,
    required TResult Function(bool isIncrement, int index) updateCart,
    required TResult Function() showApplyCoupon,
    required TResult Function(num? discount) selectCoupon,
    required TResult Function(String deliveryMethird) selectDeliveryMethord,
    required TResult Function(String time) selectTakeAwayTime,
  }) {
    return selectTakeAwayTime(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showCart,
    TResult? Function(bool isIncrement, int index)? updateCart,
    TResult? Function()? showApplyCoupon,
    TResult? Function(num? discount)? selectCoupon,
    TResult? Function(String deliveryMethird)? selectDeliveryMethord,
    TResult? Function(String time)? selectTakeAwayTime,
  }) {
    return selectTakeAwayTime?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showCart,
    TResult Function(bool isIncrement, int index)? updateCart,
    TResult Function()? showApplyCoupon,
    TResult Function(num? discount)? selectCoupon,
    TResult Function(String deliveryMethird)? selectDeliveryMethord,
    TResult Function(String time)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (selectTakeAwayTime != null) {
      return selectTakeAwayTime(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowCart value) showCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_ShowApplyCoupon value) showApplyCoupon,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_SelectDeliveryMethord value)
        selectDeliveryMethord,
    required TResult Function(_SelectTakeAwayTime value) selectTakeAwayTime,
  }) {
    return selectTakeAwayTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowCart value)? showCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult? Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
  }) {
    return selectTakeAwayTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowCart value)? showCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_ShowApplyCoupon value)? showApplyCoupon,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_SelectDeliveryMethord value)? selectDeliveryMethord,
    TResult Function(_SelectTakeAwayTime value)? selectTakeAwayTime,
    required TResult orElse(),
  }) {
    if (selectTakeAwayTime != null) {
      return selectTakeAwayTime(this);
    }
    return orElse();
  }
}

abstract class _SelectTakeAwayTime implements HomeEvent {
  const factory _SelectTakeAwayTime(final String time) = _$_SelectTakeAwayTime;

  String get time;
  @JsonKey(ignore: true)
  _$$_SelectTakeAwayTimeCopyWith<_$_SelectTakeAwayTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get showCart => throw _privateConstructorUsedError;
  bool get showApplyCoupon => throw _privateConstructorUsedError;
  num? get selectedCoupon => throw _privateConstructorUsedError;
  String? get deliveryMethord => throw _privateConstructorUsedError;
  String? get takeAwayTime => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool showCart,
      bool showApplyCoupon,
      num? selectedCoupon,
      String? deliveryMethord,
      String? takeAwayTime,
      List<ProductModel> products});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showCart = null,
    Object? showApplyCoupon = null,
    Object? selectedCoupon = freezed,
    Object? deliveryMethord = freezed,
    Object? takeAwayTime = freezed,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      showCart: null == showCart
          ? _value.showCart
          : showCart // ignore: cast_nullable_to_non_nullable
              as bool,
      showApplyCoupon: null == showApplyCoupon
          ? _value.showApplyCoupon
          : showApplyCoupon // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCoupon: freezed == selectedCoupon
          ? _value.selectedCoupon
          : selectedCoupon // ignore: cast_nullable_to_non_nullable
              as num?,
      deliveryMethord: freezed == deliveryMethord
          ? _value.deliveryMethord
          : deliveryMethord // ignore: cast_nullable_to_non_nullable
              as String?,
      takeAwayTime: freezed == takeAwayTime
          ? _value.takeAwayTime
          : takeAwayTime // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showCart,
      bool showApplyCoupon,
      num? selectedCoupon,
      String? deliveryMethord,
      String? takeAwayTime,
      List<ProductModel> products});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showCart = null,
    Object? showApplyCoupon = null,
    Object? selectedCoupon = freezed,
    Object? deliveryMethord = freezed,
    Object? takeAwayTime = freezed,
    Object? products = null,
  }) {
    return _then(_$_HomeState(
      showCart: null == showCart
          ? _value.showCart
          : showCart // ignore: cast_nullable_to_non_nullable
              as bool,
      showApplyCoupon: null == showApplyCoupon
          ? _value.showApplyCoupon
          : showApplyCoupon // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCoupon: freezed == selectedCoupon
          ? _value.selectedCoupon
          : selectedCoupon // ignore: cast_nullable_to_non_nullable
              as num?,
      deliveryMethord: freezed == deliveryMethord
          ? _value.deliveryMethord
          : deliveryMethord // ignore: cast_nullable_to_non_nullable
              as String?,
      takeAwayTime: freezed == takeAwayTime
          ? _value.takeAwayTime
          : takeAwayTime // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.showCart = true,
      this.showApplyCoupon = false,
      this.selectedCoupon,
      this.deliveryMethord,
      this.takeAwayTime,
      final List<ProductModel> products = AppDats.products})
      : _products = products;

  @override
  @JsonKey()
  final bool showCart;
  @override
  @JsonKey()
  final bool showApplyCoupon;
  @override
  final num? selectedCoupon;
  @override
  final String? deliveryMethord;
  @override
  final String? takeAwayTime;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'HomeState(showCart: $showCart, showApplyCoupon: $showApplyCoupon, selectedCoupon: $selectedCoupon, deliveryMethord: $deliveryMethord, takeAwayTime: $takeAwayTime, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.showCart, showCart) ||
                other.showCart == showCart) &&
            (identical(other.showApplyCoupon, showApplyCoupon) ||
                other.showApplyCoupon == showApplyCoupon) &&
            (identical(other.selectedCoupon, selectedCoupon) ||
                other.selectedCoupon == selectedCoupon) &&
            (identical(other.deliveryMethord, deliveryMethord) ||
                other.deliveryMethord == deliveryMethord) &&
            (identical(other.takeAwayTime, takeAwayTime) ||
                other.takeAwayTime == takeAwayTime) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      showCart,
      showApplyCoupon,
      selectedCoupon,
      deliveryMethord,
      takeAwayTime,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool showCart,
      final bool showApplyCoupon,
      final num? selectedCoupon,
      final String? deliveryMethord,
      final String? takeAwayTime,
      final List<ProductModel> products}) = _$_HomeState;

  @override
  bool get showCart;
  @override
  bool get showApplyCoupon;
  @override
  num? get selectedCoupon;
  @override
  String? get deliveryMethord;
  @override
  String? get takeAwayTime;
  @override
  List<ProductModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
