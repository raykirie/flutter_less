import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  void navigateToMainScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const MyHomePage(
        title: 'title',
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Second screen'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop('Second screen');
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  navigateToMainScreen(context);
                },
                child: const Text('Navigate to main screen'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
