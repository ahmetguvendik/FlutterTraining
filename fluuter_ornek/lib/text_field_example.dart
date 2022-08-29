import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluuter_ornek/product/language/language_items.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            textInputAction: TextInputAction.next,
            inputFormatters: [
              TextInputFormatter.withFunction((oldValue, newValue) {
                if (newValue.text == "a") {
                  return oldValue;
                } else {
                  return newValue;
                }
              })
            ],
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            buildCounter: ((context,
                {int? currentLength, bool? isFocused, int? maxLength}) {
              return Container(
                height: 20,
                width: 50,
                color: Colors.green[100 * (currentLength ?? 0)],
              );
            }),
            maxLength: 100,
            decoration: _ProjectInputEmail.emailInput,
          ),
          TextField()
        ],
      ),
    );
  }
}

class _ProjectInputEmail {
  static InputDecoration emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.email),
    border: OutlineInputBorder(),
    labelText: LanguageItems.emailLabel,
    hintText: LanguageItems.emailHint,
    fillColor: Colors.red,
    filled: true,
  );
}
