import 'package:flutter/material.dart';

import '../components/input.dart';
import '../models/transfer.dart';

class TransferForm extends StatefulWidget {
  final TextEditingController _accountNumberController =
      TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  void _createTransfer(BuildContext context) {
    final int accountNumber = int.tryParse(_accountNumberController.text) ?? 0;
    final double value = double.tryParse(_valueController.text) ?? 0.0;

    final transfer = Transfer(value, accountNumber);
    Navigator.pop(context, transfer);
  }

  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}

class TransferFormState extends State<TransferForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criando Transferência'),
      ),
      body: Column(
        children: <Widget>[
          InputComponent(
            widget._accountNumberController,
            'Número da conta',
            '0000',
            Icons.account_balance,
          ),
          InputComponent(
            widget._valueController,
            'Valor',
            '0.00',
            Icons.monetization_on,
          ),
          ElevatedButton(
            child: const Text('Confirmar'),
            onPressed: () => widget._createTransfer(context),
          ),
        ],
      ),
    );
  }
}
