import 'package:flutter/material.dart';
import 'package:love_match/calculation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Love Match',debugShowCheckedModeBanner: false, home: MyCalculator());
  }
}

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  late String firstName;
  late String secondName;
  late int score;
  void loveScore() {
    score = calculation(firstName: firstName, secondName: secondName);
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => ScorePage(score: score)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Love Match")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: 'lovegif',
                child: Image(image: AssetImage('assets/images/logo.gif')),
              ),
            ),
          ),
          TextField(
            onChanged: (value) {
              firstName = value;
            },
            decoration: InputDecoration(
              hintText: 'Enter your name',
              contentPadding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
          TextField(
            onChanged: (value) {
              secondName = value;
            },
            decoration: InputDecoration(
              hintText: "Enter your partner's name",
              contentPadding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              loveScore();
            },
            child: Text("Calculate", style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}

class ScorePage extends StatelessWidget {
  const ScorePage({super.key, required this.score});
  final int score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Hero(
                tag: 'lovegif',
                child: Image(image: AssetImage('assets/images/logo.gif')),
              ),
            ),
          ),
          Text(
            'Your Score is : $score',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
