import 'package:flutter/material.dart';

void main() {
  runApp(const ConsoleChangerApp());
}

//Console
class Console {
  final String name;
  final String imagePath;
  final String generation;
  final String year;
  final String fabrication;

  Console({
    required this.name,
    required this.imagePath,
    required this.generation,
    required this.year,
    required this.fabrication,
  });
}

//App
class ConsoleChangerApp extends StatelessWidget {
  const ConsoleChangerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Console Changer",
      home: ConsoleChangerScreen(),
    );
  }
}

//Screen
class ConsoleChangerScreen extends StatefulWidget {
  const ConsoleChangerScreen({super.key});

  @override
  State<ConsoleChangerScreen> createState() => _ConsoleChangerScreenState();
}

class _ConsoleChangerScreenState extends State<ConsoleChangerScreen> {
  final List<Console> consoles = [
    Console(
      name: "Playstation 1",
      imagePath: "assets/images/sony_playstation.png",
      generation: "Geração 5",
      year: "1994",
      fabrication: "Sony",
    ),
    Console(
      name: "Playstation 2",
      imagePath: "assets/images/sony_playstation_2.png",
      generation: "Geração 5",
      year: "2001",
      fabrication: "Sony",
    ),
    Console(
      name: "Playstation 3",
      imagePath: "assets/images/sony_playstation_3.png",
      generation: "Geração 5",
      year: "1994",
      fabrication: "Sony",
    ),
    Console(
      name: "Playstation 4",
      imagePath: "assets/images/sony_playstation_4.png",
      generation: "Geração 5",
      year: "2013",
      fabrication: "Sony",
    ),
    Console(
      name: "Psp",
      imagePath: "assets/images/sony_psp.png",
      generation: "Geração 5",
      year: "1994",
      fabrication: "Sony",
    ),
    Console(
      name: "Psp Vita",
      imagePath: "assets/images/sony_psp_vita.png",
      generation: "Geração 5",
      year: "1994",
      fabrication: "Sony",
    ),
  ];

  Console? consoleSelected;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    consoleSelected = consoles[currentIndex];
  }

  void changeConsole() {
    setState(() {
      currentIndex = (currentIndex + 1) % consoles.length;
      consoleSelected = consoles[currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ConsoleLogo(),
              ConsoleCard(console: consoleSelected!),
              ConsoleChangerButton(onPressed: changeConsole),
            ],
          ),
        ),
      ),
    );
  }
}

//Logo
class ConsoleLogo extends StatelessWidget {
  const ConsoleLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(48),
      ),
      child: Text(
        "Playstation",
        style: TextStyle(fontSize: 48, fontFamily: "Playstation"),
      ),
    );
  }
}

//Card
class ConsoleCard extends StatelessWidget {
  final Console console;

  const ConsoleCard({super.key, required this.console});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.blueGrey[700],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Image.asset(console.imagePath, width: 250),
          ),
          SizedBox(height: 16),
          Text(
            console.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "Geração: ${console.generation}",
            style: TextStyle(fontSize: 16),
          ),
          Text("Ano: ${console.year}", style: TextStyle(fontSize: 16)),
          Text(
            "Fabricação: ${console.fabrication}",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

//Button
class ConsoleChangerButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ConsoleChangerButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF1E1E2C),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 24),
        ),
        icon: const Icon(Icons.play_arrow_rounded),
        label: const Text("Próximo console"),
      ),
    );
  }
}
