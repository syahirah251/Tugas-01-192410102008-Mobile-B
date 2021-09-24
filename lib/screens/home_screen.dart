import 'package:hira_tugas/models/contact.dart';
import 'package:hira_tugas/widgets/card_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Contact> contactList = [
    Contact(
      name: 'Muhammad Nakhwa Zain',
      email: 'nakhwe10.dev@gmail.com',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEV6MeR9XsdyfmgfMYp1L5MrnYWZHxceGpddsfzOp5AhXt_7QBoY6wdPLK9_joeJ5xDl0&usqp=CAU',
      phoneNumber: '+62 896-1258-3721',
    ),
    Contact(
      name: 'Muhammad Hakim Ramadhan',
      email: 'HakimGanteng@gmail.com',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_ALAxjIpWFAQIOxCysMn40KKWlq3hJ5j-JoRuE-bPKpTe2u2o63Jvmvx-ACg1X77u7Yo&usqp=CAU',
      phoneNumber: '+62 896-1258-3721',
    ),
    Contact(
      name: 'Maharah huwaina madini',
      email: 'MaharahDini@gmail.com',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4k1lL6f0eA43gV01oT0YdQUzENivmDOlnVhGhCAnHkhKZvEi95n-wZ1j_E2ekmXMbSnM&usqp=CAU',
      phoneNumber: '+62 896-1258-3721',
    ),
    Contact(
      name: 'Dhia Hayyu Syahirah',
      email: 'dhiaCantikhira@gmail.com',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4k1lL6f0eA43gV01oT0YdQUzENivmDOlnVhGhCAnHkhKZvEi95n-wZ1j_E2ekmXMbSnM&usqp=CAU',
      phoneNumber: '+62 896-1258-3721',
    ),
    Contact(
      name: 'Mahendra arya bima putra bangsawan timur',
      email: 'anakBangsawan@gmail.com',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4k1lL6f0eA43gV01oT0YdQUzENivmDOlnVhGhCAnHkhKZvEi95n-wZ1j_E2ekmXMbSnM&usqp=CAU',
      phoneNumber: '+62 896-1258-3721',
    ),
  ];

  @override
  void initState() {
    contactList.sort((a, b) => a.name.compareTo(b.name));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Kontak'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: contactList.isNotEmpty
            ? ListView.builder(
                padding: const EdgeInsets.only(
                  bottom: 18,
                  top: 12,
                ),
                shrinkWrap: true,
                itemCount: contactList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ContactItem(item: contactList[index]);
                },
              )
            : Center(
                child: Text('Kontak Kosong'),
              ),
      ),
    );
  }
}
