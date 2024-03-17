import 'package:dartz/dartz.dart';
import 'package:phone_book/core/core.dart';

import '../entities/entity.dart';
import '../repositories/repositories.dart';

class AddContact {
  final ContactRepository _contactRepository;

  AddContact(this._contactRepository);

  Future<Either<Failure, void>> call(Contact contact) async {
    return _contactRepository.addContact(contact);
  }
}
