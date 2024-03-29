import '../database.dart';

class PhotosLinksTable extends SupabaseTable<PhotosLinksRow> {
  @override
  String get tableName => 'photosLinks';

  @override
  PhotosLinksRow createRow(Map<String, dynamic> data) => PhotosLinksRow(data);
}

class PhotosLinksRow extends SupabaseDataRow {
  PhotosLinksRow(super.data);

  @override
  SupabaseTable get table => PhotosLinksTable();

  int get roomId => getField<int>('roomId')!;
  set roomId(int value) => setField<int>('roomId', value);

  String? get link1 => getField<String>('link1');
  set link1(String? value) => setField<String>('link1', value);

  String? get link2 => getField<String>('link2');
  set link2(String? value) => setField<String>('link2', value);

  String? get link3 => getField<String>('link3');
  set link3(String? value) => setField<String>('link3', value);

  String? get link4 => getField<String>('link4');
  set link4(String? value) => setField<String>('link4', value);

  String? get link5 => getField<String>('link5');
  set link5(String? value) => setField<String>('link5', value);

  String? get link6 => getField<String>('link6');
  set link6(String? value) => setField<String>('link6', value);

  String? get link7 => getField<String>('link7');
  set link7(String? value) => setField<String>('link7', value);

  String? get link8 => getField<String>('link8');
  set link8(String? value) => setField<String>('link8', value);

  String? get link9 => getField<String>('link9');
  set link9(String? value) => setField<String>('link9', value);

  String? get link10 => getField<String>('link10');
  set link10(String? value) => setField<String>('link10', value);
}
