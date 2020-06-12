// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _InvalidEmail<T> invalidEmail<T>({@required String failedValue}) {
    return _InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  _ShortPassword<T> shortPassword<T>({@required String failedValue}) {
    return _ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  _InvalidAge<T> invalidAge<T>({@required int failedValue}) {
    return _InvalidAge<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class _$InvalidEmailCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail({@required String failedValue}) =
      _$_InvalidEmail<T>;

  String get failedValue;
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith;
}

abstract class _$ShortPasswordCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword<T> value, $Res Function(_ShortPassword<T>) then) =
      __$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

class __$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword<T> _value, $Res Function(_ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _ShortPassword<T>));

  @override
  _ShortPassword<T> get _value => super._value as _ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

class _$_ShortPassword<T> implements _ShortPassword<T> {
  const _$_ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      __$ShortPasswordCopyWithImpl<T, _ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailure<T> {
  const factory _ShortPassword({@required String failedValue}) =
      _$_ShortPassword<T>;

  String get failedValue;
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith;
}

abstract class _$InvalidAgeCopyWith<T, $Res> {
  factory _$InvalidAgeCopyWith(
          _InvalidAge<T> value, $Res Function(_InvalidAge<T>) then) =
      __$InvalidAgeCopyWithImpl<T, $Res>;
  $Res call({int failedValue});
}

class __$InvalidAgeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidAgeCopyWith<T, $Res> {
  __$InvalidAgeCopyWithImpl(
      _InvalidAge<T> _value, $Res Function(_InvalidAge<T>) _then)
      : super(_value, (v) => _then(v as _InvalidAge<T>));

  @override
  _InvalidAge<T> get _value => super._value as _InvalidAge<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_InvalidAge<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as int,
    ));
  }
}

class _$_InvalidAge<T> implements _InvalidAge<T> {
  const _$_InvalidAge({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final int failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidAge(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidAge<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidAgeCopyWith<T, _InvalidAge<T>> get copyWith =>
      __$InvalidAgeCopyWithImpl<T, _InvalidAge<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result invalidAge(int failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    return invalidAge(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result invalidAge(int failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidAge != null) {
      return invalidAge(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(_InvalidEmail<T> value),
    @required Result shortPassword(_ShortPassword<T> value),
    @required Result invalidAge(_InvalidAge<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidAge != null);
    return invalidAge(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(_InvalidEmail<T> value),
    Result shortPassword(_ShortPassword<T> value),
    Result invalidAge(_InvalidAge<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidAge != null) {
      return invalidAge(this);
    }
    return orElse();
  }
}

abstract class _InvalidAge<T> implements ValueFailure<T> {
  const factory _InvalidAge({@required int failedValue}) = _$_InvalidAge<T>;

  int get failedValue;
  _$InvalidAgeCopyWith<T, _InvalidAge<T>> get copyWith;
}