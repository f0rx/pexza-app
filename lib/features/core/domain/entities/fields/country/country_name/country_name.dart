import 'package:kt_dart/collection.dart';

part 'country_name_gen.dart';

class CountryName {
  static const CountryName Nigeria = _$Nigeria;
  static const CountryName Canada = _$Canada;
  static const CountryName Germany = _$Germany;
  static const CountryName Denmark = _$Denmark;
  static const CountryName France = _$France;
  static const CountryName Malaysia = _$Malaysia;
  static const CountryName Mexico = _$Mexico;
  static const CountryName Mozambique = _$Mozambique;
  static const CountryName Portugal = _$Portugal;
  static const CountryName Spain = _$Spain;
  static const CountryName Romania = _$Romania;
  static const CountryName Tanzania = _$Tanzania;
  static const CountryName CzechRepublic = _$CzechRepublic;
  static const CountryName UnitedStates = _$UnitedStates;
  static const CountryName UnitedKingdom = _$UnitedKingdom;

  final String name;

  const CountryName._(this.name);

  static KtList<CountryName> get values => _$values;

  static CountryName valueOf(String name) => _$valueOf(name);
}
