import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';

class GetContacts {
  final ContactRepository repository;

  GetContacts(this.repository);

  Future<Either<Failure, List<Contact>>> call() async {
    return await repository.getContacts();
  }
}
