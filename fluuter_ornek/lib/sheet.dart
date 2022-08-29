import 'package:flutter/material.dart';

class Sheet extends StatefulWidget {
  const Sheet({Key? key}) : super(key: key);

  @override
  State<Sheet> createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  Color _backgraoundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgraoundColor,
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await showModalBottomSheet(
              backgroundColor: _backgraoundColor,
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return _CustomSheet();
              });

          if (result is bool) {
            setState(() {
              _backgraoundColor = Colors.teal;
            });
          }
        },
        child: Icon(Icons.share),
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("asd"),
          Text("asd"),
          Text("asd"),
          Text("asd"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop<bool>(true);
                  _color = Colors.deepPurple;
                });
              },
              child: Text("Save"))
        ],
      ),
    );
  }
}
