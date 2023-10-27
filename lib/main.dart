import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aimed Labs Assignment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.redAccent,
              margin: const EdgeInsets.all(20),
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              color: Colors.grey,
                              child: Container(),
                            ),
                          ),
                          Expanded(child: Container())
                        ],
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.green,
                        child: Container(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Card(
                  color: Colors.redAccent,
                  margin: const EdgeInsets.all(20),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container()
                        ),
                        Expanded(
                          flex: 2,
                          child: Card(
                            color: Colors.green,
                            child: Container(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Card(
                    color: Colors.grey,
                    child: SizedBox(
                      width: 200,
                      height: 50,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
