import '../database.dart';

class BookingsInfoTable extends SupabaseTable<BookingsInfoRow> {
  @override
  String get tableName => 'bookingsInfo';

  @override
  BookingsInfoRow createRow(Map<String, dynamic> data) => BookingsInfoRow(data);
}

class BookingsInfoRow extends SupabaseDataRow {
  BookingsInfoRow(super.data);

  @override
  SupabaseTable get table => BookingsInfoTable();

  int get roomId => getField<int>('roomId')!;
  set roomId(int value) => setField<int>('roomId', value);

  String? get arrival => getField<String>('arrival');
  set arrival(String? value) => setField<String>('arrival', value);

  String? get departure => getField<String>('departure');
  set departure(String? value) => setField<String>('departure', value);

  int? get numAdult => getField<int>('numAdult');
  set numAdult(int? value) => setField<int>('numAdult', value);

  String? get firstName => getField<String>('firstName');
  set firstName(String? value) => setField<String>('firstName', value);

  String? get lastName => getField<String>('lastName');
  set lastName(String? value) => setField<String>('lastName', value);

  int? get invoiceAmount => getField<int>('invoiceAmount');
  set invoiceAmount(int? value) => setField<int>('invoiceAmount', value);
}
