enum LottieItems  {
  themeChange
}

extension LottieItemsExtension on LottieItems{
  String _path(){
    switch(this){
      case LottieItems.themeChange:
        return "lottie_theme";
    }
  }

  String get lottiePath => 'assets/${_path()}.json';

}