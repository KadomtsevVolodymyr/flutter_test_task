// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item>? item) loaded,
    required TResult Function(Object? exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item>? item)? loaded,
    TResult? Function(Object? exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item>? item)? loaded,
    TResult Function(Object? exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListInitialState value) initial,
    required TResult Function(ListLoadingState value) loading,
    required TResult Function(ListLoadedState value) loaded,
    required TResult Function(ListErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListInitialState value)? initial,
    TResult? Function(ListLoadingState value)? loading,
    TResult? Function(ListLoadedState value)? loaded,
    TResult? Function(ListErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListInitialState value)? initial,
    TResult Function(ListLoadingState value)? loading,
    TResult Function(ListLoadedState value)? loaded,
    TResult Function(ListErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListScreenStateCopyWith<$Res> {
  factory $ListScreenStateCopyWith(
          ListScreenState value, $Res Function(ListScreenState) then) =
      _$ListScreenStateCopyWithImpl<$Res, ListScreenState>;
}

/// @nodoc
class _$ListScreenStateCopyWithImpl<$Res, $Val extends ListScreenState>
    implements $ListScreenStateCopyWith<$Res> {
  _$ListScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListInitialStateImplCopyWith<$Res> {
  factory _$$ListInitialStateImplCopyWith(_$ListInitialStateImpl value,
          $Res Function(_$ListInitialStateImpl) then) =
      __$$ListInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListInitialStateImplCopyWithImpl<$Res>
    extends _$ListScreenStateCopyWithImpl<$Res, _$ListInitialStateImpl>
    implements _$$ListInitialStateImplCopyWith<$Res> {
  __$$ListInitialStateImplCopyWithImpl(_$ListInitialStateImpl _value,
      $Res Function(_$ListInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListInitialStateImpl implements ListInitialState {
  const _$ListInitialStateImpl();

  @override
  String toString() {
    return 'ListScreenState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item>? item) loaded,
    required TResult Function(Object? exception) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item>? item)? loaded,
    TResult? Function(Object? exception)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item>? item)? loaded,
    TResult Function(Object? exception)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListInitialState value) initial,
    required TResult Function(ListLoadingState value) loading,
    required TResult Function(ListLoadedState value) loaded,
    required TResult Function(ListErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListInitialState value)? initial,
    TResult? Function(ListLoadingState value)? loading,
    TResult? Function(ListLoadedState value)? loaded,
    TResult? Function(ListErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListInitialState value)? initial,
    TResult Function(ListLoadingState value)? loading,
    TResult Function(ListLoadedState value)? loaded,
    TResult Function(ListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ListInitialState implements ListScreenState {
  const factory ListInitialState() = _$ListInitialStateImpl;
}

/// @nodoc
abstract class _$$ListLoadingStateImplCopyWith<$Res> {
  factory _$$ListLoadingStateImplCopyWith(_$ListLoadingStateImpl value,
          $Res Function(_$ListLoadingStateImpl) then) =
      __$$ListLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListLoadingStateImplCopyWithImpl<$Res>
    extends _$ListScreenStateCopyWithImpl<$Res, _$ListLoadingStateImpl>
    implements _$$ListLoadingStateImplCopyWith<$Res> {
  __$$ListLoadingStateImplCopyWithImpl(_$ListLoadingStateImpl _value,
      $Res Function(_$ListLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListLoadingStateImpl implements ListLoadingState {
  const _$ListLoadingStateImpl();

  @override
  String toString() {
    return 'ListScreenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item>? item) loaded,
    required TResult Function(Object? exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item>? item)? loaded,
    TResult? Function(Object? exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item>? item)? loaded,
    TResult Function(Object? exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListInitialState value) initial,
    required TResult Function(ListLoadingState value) loading,
    required TResult Function(ListLoadedState value) loaded,
    required TResult Function(ListErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListInitialState value)? initial,
    TResult? Function(ListLoadingState value)? loading,
    TResult? Function(ListLoadedState value)? loaded,
    TResult? Function(ListErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListInitialState value)? initial,
    TResult Function(ListLoadingState value)? loading,
    TResult Function(ListLoadedState value)? loaded,
    TResult Function(ListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ListLoadingState implements ListScreenState {
  const factory ListLoadingState() = _$ListLoadingStateImpl;
}

/// @nodoc
abstract class _$$ListLoadedStateImplCopyWith<$Res> {
  factory _$$ListLoadedStateImplCopyWith(_$ListLoadedStateImpl value,
          $Res Function(_$ListLoadedStateImpl) then) =
      __$$ListLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Item>? item});
}

/// @nodoc
class __$$ListLoadedStateImplCopyWithImpl<$Res>
    extends _$ListScreenStateCopyWithImpl<$Res, _$ListLoadedStateImpl>
    implements _$$ListLoadedStateImplCopyWith<$Res> {
  __$$ListLoadedStateImplCopyWithImpl(
      _$ListLoadedStateImpl _value, $Res Function(_$ListLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$ListLoadedStateImpl(
      item: freezed == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc

class _$ListLoadedStateImpl implements ListLoadedState {
  const _$ListLoadedStateImpl({final List<Item>? item}) : _item = item;

  final List<Item>? _item;
  @override
  List<Item>? get item {
    final value = _item;
    if (value == null) return null;
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListScreenState.loaded(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListLoadedStateImplCopyWith<_$ListLoadedStateImpl> get copyWith =>
      __$$ListLoadedStateImplCopyWithImpl<_$ListLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item>? item) loaded,
    required TResult Function(Object? exception) error,
  }) {
    return loaded(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item>? item)? loaded,
    TResult? Function(Object? exception)? error,
  }) {
    return loaded?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item>? item)? loaded,
    TResult Function(Object? exception)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListInitialState value) initial,
    required TResult Function(ListLoadingState value) loading,
    required TResult Function(ListLoadedState value) loaded,
    required TResult Function(ListErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListInitialState value)? initial,
    TResult? Function(ListLoadingState value)? loading,
    TResult? Function(ListLoadedState value)? loaded,
    TResult? Function(ListErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListInitialState value)? initial,
    TResult Function(ListLoadingState value)? loading,
    TResult Function(ListLoadedState value)? loaded,
    TResult Function(ListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ListLoadedState implements ListScreenState {
  const factory ListLoadedState({final List<Item>? item}) =
      _$ListLoadedStateImpl;

  List<Item>? get item;
  @JsonKey(ignore: true)
  _$$ListLoadedStateImplCopyWith<_$ListLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListErrorStateImplCopyWith<$Res> {
  factory _$$ListErrorStateImplCopyWith(_$ListErrorStateImpl value,
          $Res Function(_$ListErrorStateImpl) then) =
      __$$ListErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? exception});
}

/// @nodoc
class __$$ListErrorStateImplCopyWithImpl<$Res>
    extends _$ListScreenStateCopyWithImpl<$Res, _$ListErrorStateImpl>
    implements _$$ListErrorStateImplCopyWith<$Res> {
  __$$ListErrorStateImplCopyWithImpl(
      _$ListErrorStateImpl _value, $Res Function(_$ListErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$ListErrorStateImpl(
      exception: freezed == exception ? _value.exception : exception,
    ));
  }
}

/// @nodoc

class _$ListErrorStateImpl implements ListErrorState {
  const _$ListErrorStateImpl({this.exception});

  @override
  final Object? exception;

  @override
  String toString() {
    return 'ListScreenState.error(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListErrorStateImpl &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListErrorStateImplCopyWith<_$ListErrorStateImpl> get copyWith =>
      __$$ListErrorStateImplCopyWithImpl<_$ListErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Item>? item) loaded,
    required TResult Function(Object? exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Item>? item)? loaded,
    TResult? Function(Object? exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Item>? item)? loaded,
    TResult Function(Object? exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListInitialState value) initial,
    required TResult Function(ListLoadingState value) loading,
    required TResult Function(ListLoadedState value) loaded,
    required TResult Function(ListErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListInitialState value)? initial,
    TResult? Function(ListLoadingState value)? loading,
    TResult? Function(ListLoadedState value)? loaded,
    TResult? Function(ListErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListInitialState value)? initial,
    TResult Function(ListLoadingState value)? loading,
    TResult Function(ListLoadedState value)? loaded,
    TResult Function(ListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListErrorState implements ListScreenState {
  const factory ListErrorState({final Object? exception}) =
      _$ListErrorStateImpl;

  Object? get exception;
  @JsonKey(ignore: true)
  _$$ListErrorStateImplCopyWith<_$ListErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
