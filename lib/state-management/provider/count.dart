import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

class CountExample extends StatelessWidget {
  const CountExample({super.key});
  @override
  Widget build(BuildContext context) {
    final countObj = context.watch<CountProvider>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Count Example",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(child: Text(countObj.valueIs.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CountProvider>().increaseValue(),
        child: Icon(
          Icons.add,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CountProvider extends ChangeNotifier {
  int valueIs = 0;
  increaseValue() {
    valueIs++;
    notifyListeners();
  }
}
