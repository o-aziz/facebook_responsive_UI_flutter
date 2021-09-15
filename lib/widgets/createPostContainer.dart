// ignore_for_file: deprecated_member_use

import 'package:facebook_responsive_ui/models/models.dart';
import 'package:facebook_responsive_ui/widgets/profileAvatar.dart';
import 'package:facebook_responsive_ui/widgets/responsive.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({required this.currentUser});

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        decoration: BoxDecoration(
            borderRadius: isDesktop ? BorderRadius.circular(10) : null,
            color: Colors.white),
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: "what's on your mind?"),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.red,
              height: 10,
              thickness: 0.5,
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton.icon(
                    onPressed: () => print('live'),
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text('Live'),
                  ),
                  const VerticalDivider(
                    width: 8,
                    color: Colors.red,
                  ),
                  FlatButton.icon(
                    onPressed: () => print('Photo'),
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text('Photo'),
                  ),
                  const VerticalDivider(
                    width: 8,
                    color: Colors.red,
                  ),
                  FlatButton.icon(
                    onPressed: () => print('Room'),
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: Text('Room'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
