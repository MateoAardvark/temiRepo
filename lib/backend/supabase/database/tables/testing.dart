import '../database.dart';

class TestingTable extends SupabaseTable<TestingRow> {
  @override
  String get tableName => 'testing';

  @override
  TestingRow createRow(Map<String, dynamic> data) => TestingRow(data);
}

class TestingRow extends SupabaseDataRow {
  TestingRow(super.data);

  @override
  SupabaseTable get table => TestingTable();

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

  int? get propertyId => getField<int>('propertyId');
  set propertyId(int? value) => setField<int>('propertyId', value);

  String? get propertyName => getField<String>('propertyName');
  set propertyName(String? value) => setField<String>('propertyName', value);

  String? get template1 => getField<String>('template1');
  set template1(String? value) => setField<String>('template1', value);

  String? get minPrice => getField<String>('minPrice');
  set minPrice(String? value) => setField<String>('minPrice', value);

  String? get unitName => getField<String>('unitName');
  set unitName(String? value) => setField<String>('unitName', value);

  int get roomId => getField<int>('roomId')!;
  set roomId(int value) => setField<int>('roomId', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get ownerId => getField<String>('ownerId');
  set ownerId(String? value) => setField<String>('ownerId', value);

  String? get houseRules => getField<String>('houseRules');
  set houseRules(String? value) => setField<String>('houseRules', value);

  String? get upsellItemName1 => getField<String>('upsellItemName1');
  set upsellItemName1(String? value) =>
      setField<String>('upsellItemName1', value);

  String? get upsellItemName2 => getField<String>('upsellItemName2');
  set upsellItemName2(String? value) =>
      setField<String>('upsellItemName2', value);

  String? get upsellItemName3 => getField<String>('upsellItemName3');
  set upsellItemName3(String? value) =>
      setField<String>('upsellItemName3', value);

  String? get upsellItemName4 => getField<String>('upsellItemName4');
  set upsellItemName4(String? value) =>
      setField<String>('upsellItemName4', value);

  String? get minStay => getField<String>('minStay');
  set minStay(String? value) => setField<String>('minStay', value);

  int? get maxStay => getField<int>('maxStay');
  set maxStay(int? value) => setField<int>('maxStay', value);

  int? get maxPeople => getField<int>('maxPeople');
  set maxPeople(int? value) => setField<int>('maxPeople', value);

  String? get maxAdult => getField<String>('maxAdult');
  set maxAdult(String? value) => setField<String>('maxAdult', value);

  String? get maxChildren => getField<String>('maxChildren');
  set maxChildren(String? value) => setField<String>('maxChildren', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  String? get checkInStart => getField<String>('checkInStart');
  set checkInStart(String? value) => setField<String>('checkInStart', value);

  String? get checkInEnd => getField<String>('checkInEnd');
  set checkInEnd(String? value) => setField<String>('checkInEnd', value);

  String? get checkOutEnd => getField<String>('checkOutEnd');
  set checkOutEnd(String? value) => setField<String>('checkOutEnd', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get permit => getField<String>('permit');
  set permit(String? value) => setField<String>('permit', value);

  String? get taxPercentage => getField<String>('taxPercentage');
  set taxPercentage(String? value) => setField<String>('taxPercentage', value);

  String? get cleaningFee => getField<String>('cleaningFee');
  set cleaningFee(String? value) => setField<String>('cleaningFee', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get postcode => getField<String>('postcode');
  set postcode(String? value) => setField<String>('postcode', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get propertyType => getField<String>('propertyType');
  set propertyType(String? value) => setField<String>('propertyType', value);

  String? get offerType => getField<String>('offerType');
  set offerType(String? value) => setField<String>('offerType', value);

  String? get template2 => getField<String>('template2');
  set template2(String? value) => setField<String>('template2', value);

  String? get template3 => getField<String>('template3');
  set template3(String? value) => setField<String>('template3', value);

  String? get template8 => getField<String>('template8');
  set template8(String? value) => setField<String>('template8', value);

  String? get propertyDescription1 => getField<String>('propertyDescription1');
  set propertyDescription1(String? value) =>
      setField<String>('propertyDescription1', value);

  String? get propertyDescription2 => getField<String>('propertyDescription2');
  set propertyDescription2(String? value) =>
      setField<String>('propertyDescription2', value);

  String? get generalPolicy => getField<String>('generalPolicy');
  set generalPolicy(String? value) => setField<String>('generalPolicy', value);

  String? get cancellationPolicy => getField<String>('cancellationPolicy');
  set cancellationPolicy(String? value) =>
      setField<String>('cancellationPolicy', value);

  String? get locationDescription => getField<String>('locationDescription');
  set locationDescription(String? value) =>
      setField<String>('locationDescription', value);

  String? get headline => getField<String>('headline');
  set headline(String? value) => setField<String>('headline', value);

  String? get displayName => getField<String>('displayName');
  set displayName(String? value) => setField<String>('displayName', value);

  String? get features => getField<String>('features');
  set features(String? value) => setField<String>('features', value);

  String? get featuresCleaned => getField<String>('featuresCleaned');
  set featuresCleaned(String? value) =>
      setField<String>('featuresCleaned', value);
}
