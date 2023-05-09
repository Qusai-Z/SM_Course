import "package:flutter/material.dart";

void main() => runApp(const StateManagement());

class StateManagement extends StatelessWidget {
  const StateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Test', home: Test());
  }
}

class Test extends StatelessWidget {
  Test({super.key});
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Test'),
        ),
        backgroundColor: Colors.red,
        toolbarHeight: 20,
      ),
      body: Declarative(context),
    );
  }

  Widget Declarative(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      counter++;
                    },
                  );
                },
                icon: const Icon(Icons.add),
                color: Colors.grey,
              ),
              Text('$counter'),
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      counter--;
                    },
                  );
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
