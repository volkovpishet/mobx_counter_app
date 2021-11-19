import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_counter_app/counter.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  CounterPageState createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('MobX Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Observer(
                  builder: (_) => Text(
                        '${counter.value}',
                        style: const TextStyle(fontSize: 40),
                      )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counter.increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
}
