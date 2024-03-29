import '../database.dart';

class ReviewsValuesTable extends SupabaseTable<ReviewsValuesRow> {
  @override
  String get tableName => 'reviewsValues';

  @override
  ReviewsValuesRow createRow(Map<String, dynamic> data) =>
      ReviewsValuesRow(data);
}

class ReviewsValuesRow extends SupabaseDataRow {
  ReviewsValuesRow(super.data);

  @override
  SupabaseTable get table => ReviewsValuesTable();

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get review => getField<String>('review');
  set review(String? value) => setField<String>('review', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int? get rating => getField<int>('rating');
  set rating(int? value) => setField<int>('rating', value);
}
