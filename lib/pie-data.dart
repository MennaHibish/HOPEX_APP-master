import 'dart:ui';


class PieData {
static List <Data> data=[
  Data("Achivemints", 50.0, Color(0xff5ec68f)),
  Data("unachivments", 50, Color(0xffdcd9da)),
 ];
}

class Data {
  final String name;
  final double percent;
  final Color color;

  Data(this.name, this.percent, this.color);
}