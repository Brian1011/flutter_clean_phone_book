import 'package:dartz/dartz.dart';
import 'package:phone_book/core/exceptions/failure.dart';

import '../domain.dart';

class GetContacts {
  final ContactRepository repository;

  GetContacts(this.repository);

  Future<Either<Failure, List<Contact>>> call() async {
    return repository.getContacts();
  }
}
