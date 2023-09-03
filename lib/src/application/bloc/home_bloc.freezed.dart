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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showCart,
    TResult? Function(bool isIncrement, int index)? updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showCart,
    TResult Function(bool isIncrement, int index)? updateCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowCart value) showCart,
    required TResult Function(_UpdateCart value) updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowCart value)? showCart,
    TResult? Function(_UpdateCart value)? updateCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowCart value)? showCart,
    TResult Function(_UpdateCart value)? updateCart,
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
  }) {
    return showCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showCart,
    TResult? Function(bool isIncrement, int index)? updateCart,
  }) {
    return showCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showCart,
    TResult Function(bool isIncrement, int index)? updateCart,
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
  }) {
    return showCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowCart value)? showCart,
    TResult? Function(_UpdateCart value)? updateCart,
  }) {
    return showCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowCart value)? showCart,
    TResult Function(_UpdateCart value)? updateCart,
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
  }) {
    return updateCart(isIncrement, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showCart,
    TResult? Function(bool isIncrement, int index)? updateCart,
  }) {
    return updateCart?.call(isIncrement, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showCart,
    TResult Function(bool isIncrement, int index)? updateCart,
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
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowCart value)? showCart,
    TResult? Function(_UpdateCart value)? updateCart,
  }) {
    return updateCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowCart value)? showCart,
    TResult Function(_UpdateCart value)? updateCart,
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
mixin _$HomeState {
  bool get showCart => throw _privateConstructorUsedError;
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
  $Res call({bool showCart, List<ProductModel> products});
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
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      showCart: null == showCart
          ? _value.showCart
          : showCart // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({bool showCart, List<ProductModel> products});
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
    Object? products = null,
  }) {
    return _then(_$_HomeState(
      showCart: null == showCart
          ? _value.showCart
          : showCart // ignore: cast_nullable_to_non_nullable
              as bool,
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
      final List<ProductModel> products = AppDats.products})
      : _products = products;

  @override
  @JsonKey()
  final bool showCart;
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
    return 'HomeState(showCart: $showCart, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.showCart, showCart) ||
                other.showCart == showCart) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, showCart, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool showCart, final List<ProductModel> products}) = _$_HomeState;

  @override
  bool get showCart;
  @override
  List<ProductModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
