import 'package:hira_tugas/config/custom_colors.dart';
import 'package:hira_tugas/models/contact.dart';
import 'package:hira_tugas/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class ContactDetailScreen extends StatelessWidget {
  const ContactDetailScreen({
    Key? key,
    required this.contact,
  }) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text('Detail Kontak'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 85,
                    child: Hero(
                      tag: contact.email,
                      child: CustomImage(imageUrl: contact.imageUrl),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        informationItem(
                          icon: Icons.person_outline,
                          title: 'Nama',
                          value: contact.name,
                        ),
                        informationItem(
                          icon: Icons.phone_outlined,
                          title: 'Telepon',
                          value: contact.phoneNumber,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 30,
                    color: CustomColor.primary,
                  ),
                  SizedBox(width: 12),
                  informationItem(
                    icon: Icons.email_outlined,
                    title: 'Email',
                    value: contact.email,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column informationItem(
      {required String title, required String value, required IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: CustomColor.primary,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
