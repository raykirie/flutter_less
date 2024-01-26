import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  void navToMainSreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const MyHomePage(title: 'title');
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Third screen'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop('Third screen');
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
                  navToMainSreen(context);
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
