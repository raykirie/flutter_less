import 'package:flutter/material.dart';
import 'package:flutter_application_1/fourth_screen.dart';
import 'package:flutter_application_1/second_screen.dart';
import 'package:flutter_application_1/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? buttonText;

  String? thirdButtonText;

  String? fourthButtonText;

  Future<void> navigateTosecondScreen(BuildContext context) async {
    final String? res = await Navigator.of(context).push<String?>(
      MaterialPageRoute(
        builder: (context) {
          return const SecondScreen();
        },
      ),
    );
    if (res != null) {
      setState(() {
        buttonText = res;
      });
    }
  }

  Future<void> navigateToThirdScreen(BuildContext context) async {
    final String? res = await Navigator.of(context)
        .push<String?>(MaterialPageRoute(builder: (context) {
      return const ThirdScreen();
    }));
    if (res != null) {
      setState(() {
        thirdButtonText = res;
      });
    }
  }

  Future<void> navigateToFourthScreen(BuildContext context) async {
    final String? res = await Navigator.of(context)
        .push<String?>(MaterialPageRoute(builder: (context) {
      return const FourthScreen();
    }));
    if (res != null) {
      setState(() {
        fourthButtonText = res;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('First page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  navigateTosecondScreen(context);
                },
                child: Text(buttonText ?? 'No text'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  navigateToThirdScreen(context);
                },
                child: Text(thirdButtonText ?? 'No text'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  navigateToFourthScreen(context);
                },
                child: Text(fourthButtonText ?? 'No text'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
