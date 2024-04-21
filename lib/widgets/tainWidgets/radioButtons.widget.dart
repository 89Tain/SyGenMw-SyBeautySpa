import 'package:flutter/material.dart';

class TCurvedRadio extends StatefulWidget {
  final bool value;
  final String name;
  final ValueChanged<bool> onChanged;
  final Color borderColor;
  final Color textColor;
  final double width;
  final double height;
  final double fontSize;
  final Color buttonColor;

  const TCurvedRadio({
    super.key,
    required this.name,
    required this.value,
    required this.onChanged,
    this.borderColor = Colors.black87,
    this.textColor = Colors.black87,
    this.width = 60,
    this.height = 20,
    this.fontSize = 10.0,
    this.buttonColor = Colors.white38,
  });

  @override
  // ignore: library_private_types_in_public_api
  _TCurvedRadioState createState() => _TCurvedRadioState();
}

class _TCurvedRadioState extends State<TCurvedRadio> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: widget.borderColor),
          color: widget.value ? Colors.green : widget.buttonColor,
        ),
        child: Center(
          child: Text(
            widget.name,
            style: TextStyle(
              color: widget.textColor,
              fontSize: widget.fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
