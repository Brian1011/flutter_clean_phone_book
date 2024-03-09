import '../../domain/domain.dart';

abstract class ContactLocalDataSource {
  Future<List<Contact>> getContacts();
  Future<void> addContact(Contact contact);
  Future<void> updateContact(Contact contact);
  Future<void> deleteContact(Contact contact);
}
