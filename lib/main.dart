import 'package:flutter/material.dart';

import 'screens/transfer-list.dart';

// função principal (_App.tsx)
void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: TransferList(),
    );
  }
}
