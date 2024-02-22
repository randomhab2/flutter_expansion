import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trigger_model.freezed.dart';

@freezed
class TriggerModel with _$TriggerModel {
  const factory TriggerModel({
    required UniqueKey id,
    required String title,
    required bool timeline,
    required List<TriggerModel> children,
    @Default(false) bool selected,
    IconData? icon,
  }) = _TriggerModel;
}
