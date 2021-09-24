import 'package:hira_tugas/screens/contact_detail_screen.dart';
import 'package:hira_tugas/models/contact.dart';
import 'package:flutter/material.dart';

import 'custom_image.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Contact item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ContactDetailScreen(contact: item),
          ),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  child: Hero(
                    tag: item.email,
                    child: CustomImage(imageUrl: item.imageUrl),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      Text(
                        item.phoneNumber,
                        style: TextStyle(color: Colors.grey[100]),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 24,
                  color: Colors.grey[200],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
