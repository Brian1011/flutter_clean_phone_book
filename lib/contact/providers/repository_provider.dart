import 'package:riverpod/riverpod.dart';

import '../contact.dart';
import 'data_source_provider.dart';

final contactRepositoryProvider = Provider<ContactRepository>((ref) {
  final localDataSource = ref.watch(contactLocalDataSourceProvider);
  return ContactImplRepositoryImpl(localDataSource);
});
