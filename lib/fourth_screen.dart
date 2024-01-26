import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  void navigatToMainScreen(BuildContext context) {
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
        title: const Text('Fourth screen'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop('Fourth screen');
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  navigatToMainScreen(context);
                },
                child: const Text('Navigate to main screen'),
              )
            ],
          )
        ],
      ),
    );
  }
}
