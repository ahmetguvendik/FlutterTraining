import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;

  void changeSecure(){
   setState(() {
     _isSecure = !_isSecure;
   });
  }

  @override
  Widget build(BuildContext context) {
    return  TextField(
      obscureText: _isSecure,
      decoration: InputDecoration(
          suffixIcon:
              _onVisibilityButton(),
          hintText: "Password",
          labelText: "Şifre"),
    );
  }

  IconButton _onVisibilityButton() => IconButton(onPressed: changeSecure, icon: _isSecure ? Icon(Icons.visibility) : Icon(Icons.visibility_off));
}
