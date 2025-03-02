import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:it4gaz/src/api/data/responces/models/reading.dart';

part 'data_unit.freezed.dart';
part 'data_unit.g.dart';

@freezed
class DataUnit with _$DataUnit {
  const factory DataUnit({
    required List<Reading> readings,
    required DateTime time,
  }) = _DataUnit;

  factory DataUnit.fromJson(Map<String, dynamic> json) =>
      _$DataUnitFromJson(json);
}
