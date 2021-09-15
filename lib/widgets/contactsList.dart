import 'package:facebook_responsive_ui/models/models.dart';
import 'package:facebook_responsive_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ContactsList extends StatelessWidget {
  final List<User> users;
  const ContactsList({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacs',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey.shade600,
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey.shade600,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemBuilder: (BuildContext context, int index) {
                final User user = users[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: UserCard(user: user),
                );
              },
              itemCount: users.length,
            ),
          ),
        ],
      ),
    );
  }
}
