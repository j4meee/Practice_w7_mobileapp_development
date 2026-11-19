import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Custom buttons'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableButton(),
            SizedBox(height: 20),
            SelectableButton(),
            SizedBox(height: 20),
            SelectableButton(),
          ],
        ),
      ),
    ),
  ));
}

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool isSelected = false;

  String get label => isSelected ? 'Selected' : 'Not Selected';
  Color get textColor => isSelected ? Colors.white : Colors.black;
  Color get backgroundColor =>
      isSelected ? Colors.blue.shade500 : Colors.blue.shade50;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
        ),
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Text(label),
      ),
    );
  }
}
