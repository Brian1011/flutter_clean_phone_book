import 'package:riverpod/riverpod.dart';

import '../contact.dart';
import 'isar_service_provider.dart';

final contactLocalDataSourceProvider = Provider<ContactLocalDataSource>((ref) {
  final isarService = ref.watch(isarServiceProvider);
  return isarService;
});
