// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_freezed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExampleFreezedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findNames,
    required TResult Function(String name) addName,
    required TResult Function(String name) removeNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findNames,
    TResult? Function(String name)? addName,
    TResult? Function(String name)? removeNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findNames,
    TResult Function(String name)? addName,
    TResult Function(String name)? removeNames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExampleFreezedEventFindNames value) findNames,
    required TResult Function(_ExampleFreezedEventAddName value) addName,
    required TResult Function(_ExampleFreezedEventRemoveName value) removeNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExampleFreezedEventFindNames value)? findNames,
    TResult? Function(_ExampleFreezedEventAddName value)? addName,
    TResult? Function(_ExampleFreezedEventRemoveName value)? removeNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFreezedEventFindNames value)? findNames,
    TResult Function(_ExampleFreezedEventAddName value)? addName,
    TResult Function(_ExampleFreezedEventRemoveName value)? removeNames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleFreezedEventCopyWith<$Res> {
  factory $ExampleFreezedEventCopyWith(
          ExampleFreezedEvent value, $Res Function(ExampleFreezedEvent) then) =
      _$ExampleFreezedEventCopyWithImpl<$Res, ExampleFreezedEvent>;
}

/// @nodoc
class _$ExampleFreezedEventCopyWithImpl<$Res, $Val extends ExampleFreezedEvent>
    implements $ExampleFreezedEventCopyWith<$Res> {
  _$ExampleFreezedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ExampleFreezedEventFindNamesCopyWith<$Res> {
  factory _$$_ExampleFreezedEventFindNamesCopyWith(
          _$_ExampleFreezedEventFindNames value,
          $Res Function(_$_ExampleFreezedEventFindNames) then) =
      __$$_ExampleFreezedEventFindNamesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExampleFreezedEventFindNamesCopyWithImpl<$Res>
    extends _$ExampleFreezedEventCopyWithImpl<$Res,
        _$_ExampleFreezedEventFindNames>
    implements _$$_ExampleFreezedEventFindNamesCopyWith<$Res> {
  __$$_ExampleFreezedEventFindNamesCopyWithImpl(
      _$_ExampleFreezedEventFindNames _value,
      $Res Function(_$_ExampleFreezedEventFindNames) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ExampleFreezedEventFindNames implements _ExampleFreezedEventFindNames {
  const _$_ExampleFreezedEventFindNames();

  @override
  String toString() {
    return 'ExampleFreezedEvent.findNames()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleFreezedEventFindNames);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findNames,
    required TResult Function(String name) addName,
    required TResult Function(String name) removeNames,
  }) {
    return findNames();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findNames,
    TResult? Function(String name)? addName,
    TResult? Function(String name)? removeNames,
  }) {
    return findNames?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findNames,
    TResult Function(String name)? addName,
    TResult Function(String name)? removeNames,
    required TResult orElse(),
  }) {
    if (findNames != null) {
      return findNames();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExampleFreezedEventFindNames value) findNames,
    required TResult Function(_ExampleFreezedEventAddName value) addName,
    required TResult Function(_ExampleFreezedEventRemoveName value) removeNames,
  }) {
    return findNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExampleFreezedEventFindNames value)? findNames,
    TResult? Function(_ExampleFreezedEventAddName value)? addName,
    TResult? Function(_ExampleFreezedEventRemoveName value)? removeNames,
  }) {
    return findNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFreezedEventFindNames value)? findNames,
    TResult Function(_ExampleFreezedEventAddName value)? addName,
    TResult Function(_ExampleFreezedEventRemoveName value)? removeNames,
    required TResult orElse(),
  }) {
    if (findNames != null) {
      return findNames(this);
    }
    return orElse();
  }
}

abstract class _ExampleFreezedEventFindNames implements ExampleFreezedEvent {
  const factory _ExampleFreezedEventFindNames() =
      _$_ExampleFreezedEventFindNames;
}

/// @nodoc
abstract class _$$_ExampleFreezedEventAddNameCopyWith<$Res> {
  factory _$$_ExampleFreezedEventAddNameCopyWith(
          _$_ExampleFreezedEventAddName value,
          $Res Function(_$_ExampleFreezedEventAddName) then) =
      __$$_ExampleFreezedEventAddNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ExampleFreezedEventAddNameCopyWithImpl<$Res>
    extends _$ExampleFreezedEventCopyWithImpl<$Res,
        _$_ExampleFreezedEventAddName>
    implements _$$_ExampleFreezedEventAddNameCopyWith<$Res> {
  __$$_ExampleFreezedEventAddNameCopyWithImpl(
      _$_ExampleFreezedEventAddName _value,
      $Res Function(_$_ExampleFreezedEventAddName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ExampleFreezedEventAddName(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExampleFreezedEventAddName implements _ExampleFreezedEventAddName {
  const _$_ExampleFreezedEventAddName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ExampleFreezedEvent.addName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleFreezedEventAddName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExampleFreezedEventAddNameCopyWith<_$_ExampleFreezedEventAddName>
      get copyWith => __$$_ExampleFreezedEventAddNameCopyWithImpl<
          _$_ExampleFreezedEventAddName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findNames,
    required TResult Function(String name) addName,
    required TResult Function(String name) removeNames,
  }) {
    return addName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findNames,
    TResult? Function(String name)? addName,
    TResult? Function(String name)? removeNames,
  }) {
    return addName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findNames,
    TResult Function(String name)? addName,
    TResult Function(String name)? removeNames,
    required TResult orElse(),
  }) {
    if (addName != null) {
      return addName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExampleFreezedEventFindNames value) findNames,
    required TResult Function(_ExampleFreezedEventAddName value) addName,
    required TResult Function(_ExampleFreezedEventRemoveName value) removeNames,
  }) {
    return addName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExampleFreezedEventFindNames value)? findNames,
    TResult? Function(_ExampleFreezedEventAddName value)? addName,
    TResult? Function(_ExampleFreezedEventRemoveName value)? removeNames,
  }) {
    return addName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFreezedEventFindNames value)? findNames,
    TResult Function(_ExampleFreezedEventAddName value)? addName,
    TResult Function(_ExampleFreezedEventRemoveName value)? removeNames,
    required TResult orElse(),
  }) {
    if (addName != null) {
      return addName(this);
    }
    return orElse();
  }
}

abstract class _ExampleFreezedEventAddName implements ExampleFreezedEvent {
  const factory _ExampleFreezedEventAddName(final String name) =
      _$_ExampleFreezedEventAddName;

  String get name;
  @JsonKey(ignore: true)
  _$$_ExampleFreezedEventAddNameCopyWith<_$_ExampleFreezedEventAddName>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExampleFreezedEventRemoveNameCopyWith<$Res> {
  factory _$$_ExampleFreezedEventRemoveNameCopyWith(
          _$_ExampleFreezedEventRemoveName value,
          $Res Function(_$_ExampleFreezedEventRemoveName) then) =
      __$$_ExampleFreezedEventRemoveNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ExampleFreezedEventRemoveNameCopyWithImpl<$Res>
    extends _$ExampleFreezedEventCopyWithImpl<$Res,
        _$_ExampleFreezedEventRemoveName>
    implements _$$_ExampleFreezedEventRemoveNameCopyWith<$Res> {
  __$$_ExampleFreezedEventRemoveNameCopyWithImpl(
      _$_ExampleFreezedEventRemoveName _value,
      $Res Function(_$_ExampleFreezedEventRemoveName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ExampleFreezedEventRemoveName(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExampleFreezedEventRemoveName
    implements _ExampleFreezedEventRemoveName {
  const _$_ExampleFreezedEventRemoveName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ExampleFreezedEvent.removeNames(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleFreezedEventRemoveName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExampleFreezedEventRemoveNameCopyWith<_$_ExampleFreezedEventRemoveName>
      get copyWith => __$$_ExampleFreezedEventRemoveNameCopyWithImpl<
          _$_ExampleFreezedEventRemoveName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findNames,
    required TResult Function(String name) addName,
    required TResult Function(String name) removeNames,
  }) {
    return removeNames(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findNames,
    TResult? Function(String name)? addName,
    TResult? Function(String name)? removeNames,
  }) {
    return removeNames?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findNames,
    TResult Function(String name)? addName,
    TResult Function(String name)? removeNames,
    required TResult orElse(),
  }) {
    if (removeNames != null) {
      return removeNames(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExampleFreezedEventFindNames value) findNames,
    required TResult Function(_ExampleFreezedEventAddName value) addName,
    required TResult Function(_ExampleFreezedEventRemoveName value) removeNames,
  }) {
    return removeNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExampleFreezedEventFindNames value)? findNames,
    TResult? Function(_ExampleFreezedEventAddName value)? addName,
    TResult? Function(_ExampleFreezedEventRemoveName value)? removeNames,
  }) {
    return removeNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFreezedEventFindNames value)? findNames,
    TResult Function(_ExampleFreezedEventAddName value)? addName,
    TResult Function(_ExampleFreezedEventRemoveName value)? removeNames,
    required TResult orElse(),
  }) {
    if (removeNames != null) {
      return removeNames(this);
    }
    return orElse();
  }
}

abstract class _ExampleFreezedEventRemoveName implements ExampleFreezedEvent {
  const factory _ExampleFreezedEventRemoveName(final String name) =
      _$_ExampleFreezedEventRemoveName;

  String get name;
  @JsonKey(ignore: true)
  _$$_ExampleFreezedEventRemoveNameCopyWith<_$_ExampleFreezedEventRemoveName>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExampleFreezedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> names) data,
    required TResult Function() loading,
    required TResult Function(String message, List<String> names) showBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> names)? data,
    TResult? Function()? loading,
    TResult? Function(String message, List<String> names)? showBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> names)? data,
    TResult Function()? loading,
    TResult Function(String message, List<String> names)? showBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExampleFreezedStateInitial value) initial,
    required TResult Function(_ExampleFreezedStateData value) data,
    required TResult Function(_ExampleFreezedStateLoading value) loading,
    required TResult Function(_ExampleFreezedStateShowBanner value) showBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExampleFreezedStateInitial value)? initial,
    TResult? Function(_ExampleFreezedStateData value)? data,
    TResult? Function(_ExampleFreezedStateLoading value)? loading,
    TResult? Function(_ExampleFreezedStateShowBanner value)? showBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFreezedStateInitial value)? initial,
    TResult Function(_ExampleFreezedStateData value)? data,
    TResult Function(_ExampleFreezedStateLoading value)? loading,
    TResult Function(_ExampleFreezedStateShowBanner value)? showBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleFreezedStateCopyWith<$Res> {
  factory $ExampleFreezedStateCopyWith(
          ExampleFreezedState value, $Res Function(ExampleFreezedState) then) =
      _$ExampleFreezedStateCopyWithImpl<$Res, ExampleFreezedState>;
}

/// @nodoc
class _$ExampleFreezedStateCopyWithImpl<$Res, $Val extends ExampleFreezedState>
    implements $ExampleFreezedStateCopyWith<$Res> {
  _$ExampleFreezedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ExampleFreezedStateInitialCopyWith<$Res> {
  factory _$$_ExampleFreezedStateInitialCopyWith(
          _$_ExampleFreezedStateInitial value,
          $Res Function(_$_ExampleFreezedStateInitial) then) =
      __$$_ExampleFreezedStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExampleFreezedStateInitialCopyWithImpl<$Res>
    extends _$ExampleFreezedStateCopyWithImpl<$Res,
        _$_ExampleFreezedStateInitial>
    implements _$$_ExampleFreezedStateInitialCopyWith<$Res> {
  __$$_ExampleFreezedStateInitialCopyWithImpl(
      _$_ExampleFreezedStateInitial _value,
      $Res Function(_$_ExampleFreezedStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ExampleFreezedStateInitial implements _ExampleFreezedStateInitial {
  _$_ExampleFreezedStateInitial();

  @override
  String toString() {
    return 'ExampleFreezedState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleFreezedStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> names) data,
    required TResult Function() loading,
    required TResult Function(String message, List<String> names) showBanner,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> names)? data,
    TResult? Function()? loading,
    TResult? Function(String message, List<String> names)? showBanner,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> names)? data,
    TResult Function()? loading,
    TResult Function(String message, List<String> names)? showBanner,
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
    required TResult Function(_ExampleFreezedStateInitial value) initial,
    required TResult Function(_ExampleFreezedStateData value) data,
    required TResult Function(_ExampleFreezedStateLoading value) loading,
    required TResult Function(_ExampleFreezedStateShowBanner value) showBanner,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExampleFreezedStateInitial value)? initial,
    TResult? Function(_ExampleFreezedStateData value)? data,
    TResult? Function(_ExampleFreezedStateLoading value)? loading,
    TResult? Function(_ExampleFreezedStateShowBanner value)? showBanner,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFreezedStateInitial value)? initial,
    TResult Function(_ExampleFreezedStateData value)? data,
    TResult Function(_ExampleFreezedStateLoading value)? loading,
    TResult Function(_ExampleFreezedStateShowBanner value)? showBanner,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ExampleFreezedStateInitial implements ExampleFreezedState {
  factory _ExampleFreezedStateInitial() = _$_ExampleFreezedStateInitial;
}

/// @nodoc
abstract class _$$_ExampleFreezedStateDataCopyWith<$Res> {
  factory _$$_ExampleFreezedStateDataCopyWith(_$_ExampleFreezedStateData value,
          $Res Function(_$_ExampleFreezedStateData) then) =
      __$$_ExampleFreezedStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> names});
}

/// @nodoc
class __$$_ExampleFreezedStateDataCopyWithImpl<$Res>
    extends _$ExampleFreezedStateCopyWithImpl<$Res, _$_ExampleFreezedStateData>
    implements _$$_ExampleFreezedStateDataCopyWith<$Res> {
  __$$_ExampleFreezedStateDataCopyWithImpl(_$_ExampleFreezedStateData _value,
      $Res Function(_$_ExampleFreezedStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = null,
  }) {
    return _then(_$_ExampleFreezedStateData(
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ExampleFreezedStateData implements _ExampleFreezedStateData {
  _$_ExampleFreezedStateData({required final List<String> names})
      : _names = names;

  final List<String> _names;
  @override
  List<String> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  String toString() {
    return 'ExampleFreezedState.data(names: $names)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleFreezedStateData &&
            const DeepCollectionEquality().equals(other._names, _names));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_names));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExampleFreezedStateDataCopyWith<_$_ExampleFreezedStateData>
      get copyWith =>
          __$$_ExampleFreezedStateDataCopyWithImpl<_$_ExampleFreezedStateData>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> names) data,
    required TResult Function() loading,
    required TResult Function(String message, List<String> names) showBanner,
  }) {
    return data(names);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> names)? data,
    TResult? Function()? loading,
    TResult? Function(String message, List<String> names)? showBanner,
  }) {
    return data?.call(names);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> names)? data,
    TResult Function()? loading,
    TResult Function(String message, List<String> names)? showBanner,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(names);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExampleFreezedStateInitial value) initial,
    required TResult Function(_ExampleFreezedStateData value) data,
    required TResult Function(_ExampleFreezedStateLoading value) loading,
    required TResult Function(_ExampleFreezedStateShowBanner value) showBanner,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExampleFreezedStateInitial value)? initial,
    TResult? Function(_ExampleFreezedStateData value)? data,
    TResult? Function(_ExampleFreezedStateLoading value)? loading,
    TResult? Function(_ExampleFreezedStateShowBanner value)? showBanner,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFreezedStateInitial value)? initial,
    TResult Function(_ExampleFreezedStateData value)? data,
    TResult Function(_ExampleFreezedStateLoading value)? loading,
    TResult Function(_ExampleFreezedStateShowBanner value)? showBanner,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ExampleFreezedStateData implements ExampleFreezedState {
  factory _ExampleFreezedStateData({required final List<String> names}) =
      _$_ExampleFreezedStateData;

  List<String> get names;
  @JsonKey(ignore: true)
  _$$_ExampleFreezedStateDataCopyWith<_$_ExampleFreezedStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExampleFreezedStateLoadingCopyWith<$Res> {
  factory _$$_ExampleFreezedStateLoadingCopyWith(
          _$_ExampleFreezedStateLoading value,
          $Res Function(_$_ExampleFreezedStateLoading) then) =
      __$$_ExampleFreezedStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExampleFreezedStateLoadingCopyWithImpl<$Res>
    extends _$ExampleFreezedStateCopyWithImpl<$Res,
        _$_ExampleFreezedStateLoading>
    implements _$$_ExampleFreezedStateLoadingCopyWith<$Res> {
  __$$_ExampleFreezedStateLoadingCopyWithImpl(
      _$_ExampleFreezedStateLoading _value,
      $Res Function(_$_ExampleFreezedStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ExampleFreezedStateLoading implements _ExampleFreezedStateLoading {
  _$_ExampleFreezedStateLoading();

  @override
  String toString() {
    return 'ExampleFreezedState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleFreezedStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> names) data,
    required TResult Function() loading,
    required TResult Function(String message, List<String> names) showBanner,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> names)? data,
    TResult? Function()? loading,
    TResult? Function(String message, List<String> names)? showBanner,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> names)? data,
    TResult Function()? loading,
    TResult Function(String message, List<String> names)? showBanner,
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
    required TResult Function(_ExampleFreezedStateInitial value) initial,
    required TResult Function(_ExampleFreezedStateData value) data,
    required TResult Function(_ExampleFreezedStateLoading value) loading,
    required TResult Function(_ExampleFreezedStateShowBanner value) showBanner,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExampleFreezedStateInitial value)? initial,
    TResult? Function(_ExampleFreezedStateData value)? data,
    TResult? Function(_ExampleFreezedStateLoading value)? loading,
    TResult? Function(_ExampleFreezedStateShowBanner value)? showBanner,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFreezedStateInitial value)? initial,
    TResult Function(_ExampleFreezedStateData value)? data,
    TResult Function(_ExampleFreezedStateLoading value)? loading,
    TResult Function(_ExampleFreezedStateShowBanner value)? showBanner,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ExampleFreezedStateLoading implements ExampleFreezedState {
  factory _ExampleFreezedStateLoading() = _$_ExampleFreezedStateLoading;
}

/// @nodoc
abstract class _$$_ExampleFreezedStateShowBannerCopyWith<$Res> {
  factory _$$_ExampleFreezedStateShowBannerCopyWith(
          _$_ExampleFreezedStateShowBanner value,
          $Res Function(_$_ExampleFreezedStateShowBanner) then) =
      __$$_ExampleFreezedStateShowBannerCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, List<String> names});
}

/// @nodoc
class __$$_ExampleFreezedStateShowBannerCopyWithImpl<$Res>
    extends _$ExampleFreezedStateCopyWithImpl<$Res,
        _$_ExampleFreezedStateShowBanner>
    implements _$$_ExampleFreezedStateShowBannerCopyWith<$Res> {
  __$$_ExampleFreezedStateShowBannerCopyWithImpl(
      _$_ExampleFreezedStateShowBanner _value,
      $Res Function(_$_ExampleFreezedStateShowBanner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? names = null,
  }) {
    return _then(_$_ExampleFreezedStateShowBanner(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ExampleFreezedStateShowBanner
    implements _ExampleFreezedStateShowBanner {
  _$_ExampleFreezedStateShowBanner(
      {required this.message, required final List<String> names})
      : _names = names;

  @override
  final String message;
  final List<String> _names;
  @override
  List<String> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  String toString() {
    return 'ExampleFreezedState.showBanner(message: $message, names: $names)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleFreezedStateShowBanner &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._names, _names));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_names));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExampleFreezedStateShowBannerCopyWith<_$_ExampleFreezedStateShowBanner>
      get copyWith => __$$_ExampleFreezedStateShowBannerCopyWithImpl<
          _$_ExampleFreezedStateShowBanner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> names) data,
    required TResult Function() loading,
    required TResult Function(String message, List<String> names) showBanner,
  }) {
    return showBanner(message, names);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> names)? data,
    TResult? Function()? loading,
    TResult? Function(String message, List<String> names)? showBanner,
  }) {
    return showBanner?.call(message, names);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> names)? data,
    TResult Function()? loading,
    TResult Function(String message, List<String> names)? showBanner,
    required TResult orElse(),
  }) {
    if (showBanner != null) {
      return showBanner(message, names);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExampleFreezedStateInitial value) initial,
    required TResult Function(_ExampleFreezedStateData value) data,
    required TResult Function(_ExampleFreezedStateLoading value) loading,
    required TResult Function(_ExampleFreezedStateShowBanner value) showBanner,
  }) {
    return showBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExampleFreezedStateInitial value)? initial,
    TResult? Function(_ExampleFreezedStateData value)? data,
    TResult? Function(_ExampleFreezedStateLoading value)? loading,
    TResult? Function(_ExampleFreezedStateShowBanner value)? showBanner,
  }) {
    return showBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExampleFreezedStateInitial value)? initial,
    TResult Function(_ExampleFreezedStateData value)? data,
    TResult Function(_ExampleFreezedStateLoading value)? loading,
    TResult Function(_ExampleFreezedStateShowBanner value)? showBanner,
    required TResult orElse(),
  }) {
    if (showBanner != null) {
      return showBanner(this);
    }
    return orElse();
  }
}

abstract class _ExampleFreezedStateShowBanner implements ExampleFreezedState {
  factory _ExampleFreezedStateShowBanner(
      {required final String message,
      required final List<String> names}) = _$_ExampleFreezedStateShowBanner;

  String get message;
  List<String> get names;
  @JsonKey(ignore: true)
  _$$_ExampleFreezedStateShowBannerCopyWith<_$_ExampleFreezedStateShowBanner>
      get copyWith => throw _privateConstructorUsedError;
}
