import 'package:dartz/dartz.dart';
import 'package:phone_book/contact/contact.dart';
import 'package:phone_book/contact/data/datasources/contact_local_datasource.dart';
import 'package:phone_book/core/exceptions/failure.dart';

class ContactImplRepositoryImpl implements ContactRepository {
  final ContactLocalDataSource localDataSource;

  ContactImplRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, void>> addContact(Contact contact) async {
    try {
      await localDataSource.addContact(contact);
      return const Right(unit);
    } catch (error) {
      return Left(ErrorHandling.handleException(error));
    }
  }

  @override
  Future<Either<Failure, void>> deleteContact(Contact contact) async {
    try {
      await localDataSource.deleteContact(contact);
      return const Right(unit);
    } catch (error) {
      return Left(ErrorHandling.handleException(error));
    }
  }

  @override
  Future<Either<Failure, List<Contact>>> getContacts() async {
    try {
      final contacts = await localDataSource.getContacts();
      return Right(contacts);
    } catch (error) {
      return Left(ErrorHandling.handleException(error));
    }
  }

  @override
  Future<Either<Failure, void>> updateContact(Contact contact) async {
    try {
      await localDataSource.updateContact(contact);
      return const Right(unit);
    } catch (error) {
      return Left(ErrorHandling.handleException(error));
    }
  }
}
