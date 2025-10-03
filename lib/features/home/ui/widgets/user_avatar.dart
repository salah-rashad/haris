import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 22.0),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: SizedBox.square(
          dimension: 40,
          child: CircleAvatar(backgroundColor: Colors.grey.shade300),
        ),
      ),
    );
  }
}
