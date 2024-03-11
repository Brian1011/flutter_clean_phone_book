import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phone_book/contact/contact.dart';

class ContactScreen extends ConsumerWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getContactsAsync = ref.watch(getContactsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Container(
          child: getContactsAsync.when(
              data: (contacts) => ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    final contact = contacts[index];
                    return ListTile(
                      title: Text(contact.name),
                      subtitle: Text(contact.phone),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // ref.read(deleteContactProvider(contact.id));
                        },
                      ),
                    );
                  }),
              error: (error, stackTrace) {
                return Center(
                  child: Text('Error: $error'),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()))),
    );
  }
}
