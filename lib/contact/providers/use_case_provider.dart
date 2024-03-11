import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/domain.dart';
import 'repository_provider.dart';

final getContactsProvider =
    AsyncNotifierProvider<GetContactsNotifier, List<Contact>>(() {
  return GetContactsNotifier();
});

final addContactProvider = Provider<AddContact>((ref) {
  final repository = ref.watch(contactRepositoryProvider);
  return AddContact(repository);
});

final updateContactProvider = Provider<UpdateContact>((ref) {
  final repository = ref.watch(contactRepositoryProvider);
  return UpdateContact(repository);
});

final deleteContactProvider = Provider<DeleteContact>((ref) {
  final repository = ref.watch(contactRepositoryProvider);
  return DeleteContact(repository);
});
