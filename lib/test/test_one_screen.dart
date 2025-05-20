import 'package:flutter/material.dart';
import 'package:rim_stor/core/extensions/context_extensions.dart';
import 'package:rim_stor/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test One Screen'),
            TextButton(
              onPressed: () {
                context.pushNamed(AppRoutes.testTwo);
              },
              child: Text(
                'go to test 2',
                style: TextStyle(
                  fontSize: 20,
                  color: context.color.mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
