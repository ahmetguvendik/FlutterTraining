import 'package:flutter/material.dart';
import 'package:fluuter_ornek/product/widget/callback_dropdown.dart';
import 'package:fluuter_ornek/product/widget/loading_widget.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({Key? key}) : super(key: key);

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallBackDropDown(onUserSelected: (CallBackUser user) {}),
          LoadingWidget(
            title: "Save",
            onPressed: () async{
             await Future.delayed(Duration(seconds: 1));
            },
          )
        ],
      ),
    );
  }
}

class CallBackUser {
  final String name;
  final int id;

  CallBackUser(this.name, this.id);

  static List<CallBackUser> dummyUser() {
    return [
      CallBackUser("Ahmet", 1),
      CallBackUser("Emre", 2),
      CallBackUser("Redif", 3),
    ];
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CallBackUser &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          id == other.id;

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
