import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dicee"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(image: AssetImage('images/dice-png-1.png')),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(image: AssetImage('images/dice-png-1.png')),
                ))
              ],
            ),
            ElevatedButton(onPressed: null,
             child: Text(
              "Roll",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),)
          ],
        ),
      ),
    );
  }
}