import '../database.dart';

class BedsTokensTable extends SupabaseTable<BedsTokensRow> {
  @override
  String get tableName => 'bedsTokens';

  @override
  BedsTokensRow createRow(Map<String, dynamic> data) => BedsTokensRow(data);
}

class BedsTokensRow extends SupabaseDataRow {
  BedsTokensRow(super.data);

  @override
  SupabaseTable get table => BedsTokensTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get token => getField<String>('token')!;
  set token(String value) => setField<String>('token', value);
}
