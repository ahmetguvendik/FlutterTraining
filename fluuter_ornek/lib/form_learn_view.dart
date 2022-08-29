import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({Key? key}) : super(key: key);

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            TextFormField(
              validator: FormValidator().textValidator,
            ),
            TextFormField(
              validator: FormValidator().textValidator,
            ),
            ElevatedButton(onPressed: () {}, child: Text(ValidatorMessages._save))
          ],
        ),
      ),
    );
  }
}

class FormValidator {
  String? textValidator(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessages._notEmpty;
  }
}

class ValidatorMessages {
  static const String _notEmpty = "Boş Geçilmez";
  static const String _save = "Save";
}
