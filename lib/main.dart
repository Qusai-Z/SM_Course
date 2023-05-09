import "package:flutter/material.dart";

void main() => runApp(const StateManagement());

class StateManagement extends StatelessWidget {
  const StateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Test', home: Test());
  }
}

class Test extends StatelessWidget {
  Test({super.key});
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        backgroundColor: Colors.red,
        toolbarHeight: 20,
      ),
    );
  }

  Widget Declarative(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Center(
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  counter++;
                },
                icon: const Icon(Icons.add),
              ),
              Text('$counter'),
              IconButton(
                onPressed: () {
                  counter--;
                },
                icon: const Icon(Icons.remove),
              )
            ],
          ),
        );
      },
    );
  }
}
