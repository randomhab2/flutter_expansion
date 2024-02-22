// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trigger_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TriggerModel {
  UniqueKey get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get timeline => throw _privateConstructorUsedError;
  List<TriggerModel> get children => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  IconData? get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TriggerModelCopyWith<TriggerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriggerModelCopyWith<$Res> {
  factory $TriggerModelCopyWith(
          TriggerModel value, $Res Function(TriggerModel) then) =
      _$TriggerModelCopyWithImpl<$Res, TriggerModel>;
  @useResult
  $Res call(
      {UniqueKey id,
      String title,
      bool timeline,
      List<TriggerModel> children,
      bool selected,
      IconData? icon});
}

/// @nodoc
class _$TriggerModelCopyWithImpl<$Res, $Val extends TriggerModel>
    implements $TriggerModelCopyWith<$Res> {
  _$TriggerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? timeline = null,
    Object? children = null,
    Object? selected = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueKey,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as bool,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<TriggerModel>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TriggerModelImplCopyWith<$Res>
    implements $TriggerModelCopyWith<$Res> {
  factory _$$TriggerModelImplCopyWith(
          _$TriggerModelImpl value, $Res Function(_$TriggerModelImpl) then) =
      __$$TriggerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueKey id,
      String title,
      bool timeline,
      List<TriggerModel> children,
      bool selected,
      IconData? icon});
}

/// @nodoc
class __$$TriggerModelImplCopyWithImpl<$Res>
    extends _$TriggerModelCopyWithImpl<$Res, _$TriggerModelImpl>
    implements _$$TriggerModelImplCopyWith<$Res> {
  __$$TriggerModelImplCopyWithImpl(
      _$TriggerModelImpl _value, $Res Function(_$TriggerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? timeline = null,
    Object? children = null,
    Object? selected = null,
    Object? icon = freezed,
  }) {
    return _then(_$TriggerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueKey,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as bool,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<TriggerModel>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ));
  }
}

/// @nodoc

class _$TriggerModelImpl implements _TriggerModel {
  const _$TriggerModelImpl(
      {required this.id,
      required this.title,
      required this.timeline,
      required final List<TriggerModel> children,
      this.selected = false,
      this.icon})
      : _children = children;

  @override
  final UniqueKey id;
  @override
  final String title;
  @override
  final bool timeline;
  final List<TriggerModel> _children;
  @override
  List<TriggerModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  @JsonKey()
  final bool selected;
  @override
  final IconData? icon;

  @override
  String toString() {
    return 'TriggerModel(id: $id, title: $title, timeline: $timeline, children: $children, selected: $selected, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriggerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, timeline,
      const DeepCollectionEquality().hash(_children), selected, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriggerModelImplCopyWith<_$TriggerModelImpl> get copyWith =>
      __$$TriggerModelImplCopyWithImpl<_$TriggerModelImpl>(this, _$identity);
}

abstract class _TriggerModel implements TriggerModel {
  const factory _TriggerModel(
      {required final UniqueKey id,
      required final String title,
      required final bool timeline,
      required final List<TriggerModel> children,
      final bool selected,
      final IconData? icon}) = _$TriggerModelImpl;

  @override
  UniqueKey get id;
  @override
  String get title;
  @override
  bool get timeline;
  @override
  List<TriggerModel> get children;
  @override
  bool get selected;
  @override
  IconData? get icon;
  @override
  @JsonKey(ignore: true)
  _$$TriggerModelImplCopyWith<_$TriggerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
