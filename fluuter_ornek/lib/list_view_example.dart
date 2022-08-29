import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            FittedBox(
              child: Text(
                "Merhaba",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
              color: Colors.red,
              height: 300,
            ),
            Divider(),
            Container(
              color: Colors.green,
              height: 300,
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.pink,
                    width: 100,
                  ),
                  Container(
                    color: Colors.white,
                    width: 100,
                  ),
                  Container(
                    color: Colors.pink,
                    width: 100,
                  ),
                  Container(
                    color: Colors.white,
                    width: 100,
                  ),
                  Container(
                    color: Colors.pink,
                    width: 100,
                  ),Container(
                    color: Colors.white,
                    width: 100,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
