import 'package:app_dev/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NewCounter extends StatefulWidget {
  const NewCounter({super.key});

  @override
  State<NewCounter> createState() => _NewCounterState();
}

class _NewCounterState extends State<NewCounter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleAppBar: 'Contador de la clase'),
      body: Center(
        child: Text(
          'Numero de veces contadas: $count',
          style: TextStyle(fontSize: 25, color: Colors.teal),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
