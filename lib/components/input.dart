import 'package:flutter/material.dart';

// input
class InputComponent extends StatelessWidget {
  final TextEditingController _controller;
  final String _label;
  final String _hint;
  final IconData _icon;

  const InputComponent(
    this._controller,
    this._label,
    this._hint,
    this._icon,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
            labelText: _label, hintText: _hint, icon: Icon(_icon)),
        style: const TextStyle(fontSize: 24.0),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
