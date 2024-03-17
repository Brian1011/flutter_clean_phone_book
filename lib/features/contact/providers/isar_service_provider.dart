import 'package:riverpod/riverpod.dart';

import '../data/datasources/datasource.dart';

final isarServiceProvider = Provider<IsarService>((ref) {
  return IsarService();
});
