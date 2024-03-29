import '../database.dart';

class PhotosDataTable extends SupabaseTable<PhotosDataRow> {
  @override
  String get tableName => 'photosData';

  @override
  PhotosDataRow createRow(Map<String, dynamic> data) => PhotosDataRow(data);
}

class PhotosDataRow extends SupabaseDataRow {
  PhotosDataRow(super.data);

  @override
  SupabaseTable get table => PhotosDataTable();

  int get roomId => getField<int>('roomId')!;
  set roomId(int value) => setField<int>('roomId', value);

  String get link1 => getField<String>('link1')!;
  set link1(String value) => setField<String>('link1', value);

  String? get link2 => getField<String>('link2');
  set link2(String? value) => setField<String>('link2', value);

  String? get link3 => getField<String>('link3');
  set link3(String? value) => setField<String>('link3', value);

  String? get link4 => getField<String>('link4');
  set link4(String? value) => setField<String>('link4', value);

  String? get link5 => getField<String>('link5');
  set link5(String? value) => setField<String>('link5', value);
}
