import 'package:riverpod/riverpod.dart';

import '../domain/domain.dart';
import 'repository_provider.dart';

final getContactsProvider = Provider<GetContacts>((ref) {
  final repository = ref.watch(contactRepositoryProvider);
  return GetContacts(repository);
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
