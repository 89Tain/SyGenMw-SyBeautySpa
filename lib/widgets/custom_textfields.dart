import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final bool isPhoneNumber;
  final bool showEdit;
  final TextEditingController controller;
  
  const CustomTextField({
    super.key,
    this.isPassword = false,
    this.isPhoneNumber = false,
    this.showEdit = false,
    required this.hint,
    required this.controller,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText; // State to handle visibility of password

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword; // Start with obscured text if it's a password field
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText; // Toggle the state of the password visibility
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: SizedBox(
        height: 40,
        child: TextField(
          controller: widget.controller,
          obscureText: _obscureText,
          autocorrect: false,
          keyboardType: widget.isPhoneNumber ? TextInputType.number : TextInputType.text,
          decoration: InputDecoration(
            hintText: widget.hint,
            contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            suffixIcon: widget.isPassword
                ? GestureDetector(
                    onTap: _togglePasswordVisibility,
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off, // Toggle icons based on state
                    ),
                  )
                : widget.showEdit
                    ? TextButton(
                        child: const Text('Edit', style: TextStyle(color: Colors.blue)),
                        onPressed: () {/* Navigation logic or other actions */},
                      )
                    : const SizedBox(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.white, width: 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // label: Padding(
            //   padding: const EdgeInsets.all(14.0),
            //   child: Text(
            //     widget.hint,
            //     style: const TextStyle(fontSize: 15,),
            //   ),
            // ),
            labelStyle: const TextStyle(color: Colors.black, fontSize: 20),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[900]),
            fillColor: Colors.grey[80],
          ),
        ),
      ),
    );
  }
}
