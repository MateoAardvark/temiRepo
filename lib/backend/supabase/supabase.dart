import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://efwqahossspqdcrnbhca.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVmd3FhaG9zc3NwcWRjcm5iaGNhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg2MDc0NTYsImV4cCI6MjAyNDE4MzQ1Nn0.Xc0WDGcMkHGaUBbQVXTselCERL9nJsjRl8FhO0i6_iw';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
