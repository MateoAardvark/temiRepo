import '../database.dart';

class CouponsTable extends SupabaseTable<CouponsRow> {
  @override
  String get tableName => 'coupons';

  @override
  CouponsRow createRow(Map<String, dynamic> data) => CouponsRow(data);
}

class CouponsRow extends SupabaseDataRow {
  CouponsRow(super.data);

  @override
  SupabaseTable get table => CouponsTable();

  String get couponCode => getField<String>('couponCode')!;
  set couponCode(String value) => setField<String>('couponCode', value);

  double get discount => getField<double>('discount')!;
  set discount(double value) => setField<double>('discount', value);
}
