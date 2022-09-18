import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'confetti_1.dart';
import 'confetti_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Confetti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Confetti(),
      // home: const GetConfetti(),
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Confetti Animation'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: () 
                {
                  Get.to(() => const Confetti());
                },
                 child: const Text('Confetti', style: TextStyle(fontSize: 20),),
                 ),
              const SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: () 
                {
                  Get.to(() => const GetConfetti());
                },
                 child: const Text('Getx Confetti', style: TextStyle(fontSize: 20),),
                 ),
            ],
          ),
        ),
      ),
    );
  }
}
