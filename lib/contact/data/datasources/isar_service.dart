import 'package:phone_book/contact/domain/entities/contact.dart';

import 'contact_local_datasource.dart';

class IsarService implements ContactLocalDataSource {
  @override
  Future<void> addContact(Contact contact) {
    // TODO: implement addContact
    throw UnimplementedError();
  }

  @override
  Future<void> deleteContact(Contact contact) {
    // TODO: implement deleteContact
    throw UnimplementedError();
  }

  @override
  Future<List<Contact>> getContacts() {
    // TODO: implement getContacts
    throw UnimplementedError();
  }

  @override
  Future<void> updateContact(Contact contact) {
    // TODO: implement updateContact
    throw UnimplementedError();
  }
}
