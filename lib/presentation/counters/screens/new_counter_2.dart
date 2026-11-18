import 'package:app_dev/presentation/counters/providers/counter_provider.dart';
import 'package:app_dev/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewCounter2 extends StatelessWidget {
  const NewCounter2({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<CounterProvider>();
    return Scaffold(
      appBar: CustomAppBar(titleAppBar: 'Contador de la clase'),
      body: Center(
        child: Text(
          'Numero de veces contadas: ${provider.contador}',
          style: TextStyle(fontSize: 25, color: Colors.teal),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int count = provider.contador;
          provider.setContador((count + 1));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
