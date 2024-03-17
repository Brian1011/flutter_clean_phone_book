import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../entities/contact.dart';

abstract class ContactRepository {
  // list of contacts
  Future<Either<Failure, List<Contact>>> getContacts();

  // add new contact
  Future<Either<Failure, void>> addContact(Contact contact);

  // update existing contact
  Future<Either<Failure, void>> updateContact(Contact contact);

  // Deletes contact
  Future<Either<Failure, void>> deleteContact(Contact contact);
}
