import '../database.dart';

class PapagoReviewsTable extends SupabaseTable<PapagoReviewsRow> {
  @override
  String get tableName => 'papagoReviews';

  @override
  PapagoReviewsRow createRow(Map<String, dynamic> data) =>
      PapagoReviewsRow(data);
}

class PapagoReviewsRow extends SupabaseDataRow {
  PapagoReviewsRow(super.data);

  @override
  SupabaseTable get table => PapagoReviewsTable();

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String get review => getField<String>('review')!;
  set review(String value) => setField<String>('review', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int? get rating => getField<int>('rating');
  set rating(int? value) => setField<int>('rating', value);
}
