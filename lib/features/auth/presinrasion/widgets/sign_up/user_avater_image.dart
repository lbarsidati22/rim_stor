import 'package:flutter/material.dart';
import 'package:rim_stor/core/common/animations/animate_do.dart';

class UserAvaterImage extends StatelessWidget {
  const UserAvaterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage(
            'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
      ),
    );
  }
}
