import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';

class UpdateContact {
  final ContactRepository repository;

  UpdateContact(this.repository);

  Future<Either<Failure, void>> call(Contact contact) {
    return repository.updateContact(contact);
  }
}
