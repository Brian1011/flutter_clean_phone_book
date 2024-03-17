import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';

class DeleteContact {
  final ContactRepository repository;

  DeleteContact(this.repository);

  Future<Either<Failure, void>> call(Contact contact) async {
    return repository.deleteContact(contact);
  }
}
