// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterEvent {
  Filter get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? apply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplyFilterEvent value) apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplyFilterEvent value)? apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplyFilterEvent value)? apply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterEventCopyWith<FilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res, FilterEvent>;
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res, $Val extends FilterEvent>
    implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyFilterEventImplCopyWith<$Res>
    implements $FilterEventCopyWith<$Res> {
  factory _$$ApplyFilterEventImplCopyWith(_$ApplyFilterEventImpl value,
          $Res Function(_$ApplyFilterEventImpl) then) =
      __$$ApplyFilterEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class __$$ApplyFilterEventImplCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res, _$ApplyFilterEventImpl>
    implements _$$ApplyFilterEventImplCopyWith<$Res> {
  __$$ApplyFilterEventImplCopyWithImpl(_$ApplyFilterEventImpl _value,
      $Res Function(_$ApplyFilterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$ApplyFilterEventImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$ApplyFilterEventImpl implements ApplyFilterEvent {
  const _$ApplyFilterEventImpl(this.filter);

  @override
  final Filter filter;

  @override
  String toString() {
    return 'FilterEvent.apply(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyFilterEventImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyFilterEventImplCopyWith<_$ApplyFilterEventImpl> get copyWith =>
      __$$ApplyFilterEventImplCopyWithImpl<_$ApplyFilterEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Filter filter) apply,
  }) {
    return apply(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Filter filter)? apply,
  }) {
    return apply?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Filter filter)? apply,
    required TResult orElse(),
  }) {
    if (apply != null) {
      return apply(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplyFilterEvent value) apply,
  }) {
    return apply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplyFilterEvent value)? apply,
  }) {
    return apply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplyFilterEvent value)? apply,
    required TResult orElse(),
  }) {
    if (apply != null) {
      return apply(this);
    }
    return orElse();
  }
}

abstract class ApplyFilterEvent implements FilterEvent {
  const factory ApplyFilterEvent(final Filter filter) = _$ApplyFilterEventImpl;

  @override
  Filter get filter;
  @override
  @JsonKey(ignore: true)
  _$$ApplyFilterEventImplCopyWith<_$ApplyFilterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Doctor> filteredDoctors) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Doctor> filteredDoctors)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Doctor> filteredDoctors)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial value) initial,
    required TResult Function(FilterFiltered value) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterInitial value)? initial,
    TResult? Function(FilterFiltered value)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterFiltered value)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FilterInitialImplCopyWith<$Res> {
  factory _$$FilterInitialImplCopyWith(
          _$FilterInitialImpl value, $Res Function(_$FilterInitialImpl) then) =
      __$$FilterInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterInitialImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$FilterInitialImpl>
    implements _$$FilterInitialImplCopyWith<$Res> {
  __$$FilterInitialImplCopyWithImpl(
      _$FilterInitialImpl _value, $Res Function(_$FilterInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilterInitialImpl implements FilterInitial {
  const _$FilterInitialImpl();

  @override
  String toString() {
    return 'FilterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Doctor> filteredDoctors) filtered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Doctor> filteredDoctors)? filtered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Doctor> filteredDoctors)? filtered,
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
    required TResult Function(FilterInitial value) initial,
    required TResult Function(FilterFiltered value) filtered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterInitial value)? initial,
    TResult? Function(FilterFiltered value)? filtered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterFiltered value)? filtered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FilterInitial implements FilterState {
  const factory FilterInitial() = _$FilterInitialImpl;
}

/// @nodoc
abstract class _$$FilterFilteredImplCopyWith<$Res> {
  factory _$$FilterFilteredImplCopyWith(_$FilterFilteredImpl value,
          $Res Function(_$FilterFilteredImpl) then) =
      __$$FilterFilteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Doctor> filteredDoctors});
}

/// @nodoc
class __$$FilterFilteredImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$FilterFilteredImpl>
    implements _$$FilterFilteredImplCopyWith<$Res> {
  __$$FilterFilteredImplCopyWithImpl(
      _$FilterFilteredImpl _value, $Res Function(_$FilterFilteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredDoctors = null,
  }) {
    return _then(_$FilterFilteredImpl(
      null == filteredDoctors
          ? _value._filteredDoctors
          : filteredDoctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
    ));
  }
}

/// @nodoc

class _$FilterFilteredImpl implements FilterFiltered {
  const _$FilterFilteredImpl(final List<Doctor> filteredDoctors)
      : _filteredDoctors = filteredDoctors;

  final List<Doctor> _filteredDoctors;
  @override
  List<Doctor> get filteredDoctors {
    if (_filteredDoctors is EqualUnmodifiableListView) return _filteredDoctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredDoctors);
  }

  @override
  String toString() {
    return 'FilterState.filtered(filteredDoctors: $filteredDoctors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterFilteredImpl &&
            const DeepCollectionEquality()
                .equals(other._filteredDoctors, _filteredDoctors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_filteredDoctors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterFilteredImplCopyWith<_$FilterFilteredImpl> get copyWith =>
      __$$FilterFilteredImplCopyWithImpl<_$FilterFilteredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Doctor> filteredDoctors) filtered,
  }) {
    return filtered(filteredDoctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Doctor> filteredDoctors)? filtered,
  }) {
    return filtered?.call(filteredDoctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Doctor> filteredDoctors)? filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(filteredDoctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial value) initial,
    required TResult Function(FilterFiltered value) filtered,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterInitial value)? initial,
    TResult? Function(FilterFiltered value)? filtered,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterFiltered value)? filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class FilterFiltered implements FilterState {
  const factory FilterFiltered(final List<Doctor> filteredDoctors) =
      _$FilterFilteredImpl;

  List<Doctor> get filteredDoctors;
  @JsonKey(ignore: true)
  _$$FilterFilteredImplCopyWith<_$FilterFilteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
