import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/repository_provider.dart';
import '../entities/contact.dart';
import '../repositories/repositories.dart';

class GetContactsNotifier extends AsyncNotifier<List<Contact>> {
  GetContactsNotifier();

  @override
  FutureOr<List<Contact>> build() async {
    // initial state
    state = const AsyncValue.loading();

    // get the repository
    final ContactRepository repository = ref.watch(contactRepositoryProvider);
    final contactsEither = await repository.getContacts();

    // update the state with the result
    state = contactsEither.fold(
        (failure) => AsyncValue.error(failure, StackTrace.current),
        (contacts) => AsyncValue.data(contacts));

    return contactsEither.fold(
        (failure) => throw failure, (contacts) => contacts);
  }
}
