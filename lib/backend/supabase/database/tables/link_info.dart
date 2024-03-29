import '../database.dart';

class LinkInfoTable extends SupabaseTable<LinkInfoRow> {
  @override
  String get tableName => 'linkInfo';

  @override
  LinkInfoRow createRow(Map<String, dynamic> data) => LinkInfoRow(data);
}

class LinkInfoRow extends SupabaseDataRow {
  LinkInfoRow(super.data);

  @override
  SupabaseTable get table => LinkInfoTable();

  String get link => getField<String>('link')!;
  set link(String value) => setField<String>('link', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
