import 'package:flutter/material.dart';

class AppleExample extends StatelessWidget {
  const AppleExample({Key? key}) : super(key: key);
  final String title = "Create your first note";
  final String subTitle = "Add a note";
  final String buttonText = "Create a Note";
  final String buttonText2 = "Create a Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.horizontal,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                  height: 200, width: 200, child: _CustomImageWidget(path: ImageStringName.nameWithoutPath,)),
            ),
            _TitleText(title: title),
            Padding(
              padding: ProjectPadding.vertical,
              child: _SubTitleWidget(subTitle: subTitle * 3),
            ),
            const Spacer(),
            _CreateButton(buttonText: buttonText),
            _CreateTextButton(context)
          ],
        ),
      ),
    );
  }

  TextButton _CreateTextButton(BuildContext context) => TextButton(
      onPressed: () {},
      child: Text(
        buttonText2,
        style: Theme.of(context).textTheme.subtitle1,
      ));
}

class _CustomImageWidget extends StatelessWidget {
  const _CustomImageWidget({
    required this.path,
    Key? key,
  }) : super(key: key);

  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_ImageName());
  }

  String _ImageName() => "assets/$path.jpg";
}

class ImageStringName{
  static String nameWithoutPath = "elma";
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ProjectHeight.ButtonHeight,
            child: Center(
                child: Text(
              buttonText,
              style: Theme.of(context).textTheme.headline5,
            ))));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {Key? key, required this.subTitle, this.align = TextAlign.center})
      : super(key: key);

  final String subTitle;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: Theme.of(context).textTheme.subtitle1,
      textAlign: align,
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}

class ProjectPadding {
  static EdgeInsets vertical = const EdgeInsets.symmetric(vertical: 20);
  static EdgeInsets horizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectHeight {
  static double ButtonHeight = 50;
}
