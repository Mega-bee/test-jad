import 'package:flutter/material.dart';
class CheckBoxField extends StatefulWidget {
  const CheckBoxField({Key? key}) : super(key: key);

  @override
  State<CheckBoxField> createState() => _CheckBoxFieldState();
}

class _CheckBoxFieldState extends State<CheckBoxField> {
  @override
  bool value = false;
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.blue[900],
        value: this.value,
        onChanged: (value) {
          setState(() {
            this.value=value!;
          });
        });
  }
}
