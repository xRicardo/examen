import 'package:examen/src/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class swiperPopulares extends StatelessWidget {
  final controller = PageController(initialPage: 1, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return PageView(
            controller: controller,
            children: <Widget>[
              _tarjeta(),
              _tarjeta1(),
              _tarjeta(),
              _tarjeta1()
            ],
          );
        },
        itemCount: 1,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}

Widget _tarjeta() {
  return Container(
    height: 150.0,
    width: 100.0,
    padding: EdgeInsets.all(30),
    margin: EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image(
          image: AssetImage('assets/fast_furious.jpg'),
          height: 100.0,
          width: 150.0,
          fit: BoxFit.fill,
        ),
        title('Rapidos y Furiosos 9'),
        Text('2021'),
      ],
    ),
  );
}

Widget _tarjeta1() {
  return Container(
    height: 150.0,
    width: 100.0,
    padding: EdgeInsets.all(30),
    margin: EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage('frozen.jpg'),
          height: 100.0,
          width: 150.0,
          fit: BoxFit.fill,
        ),
        title('Frozen 2'),
        Text('2019'),
      ],
    ),
  );
}

Widget descripcion() {
  return Positioned(
    child: Container(
      child: Column(children: <Widget>[
        Text('4.5', style: TextStyle(color: Colors.white, fontSize: 15))
      ]),
    ),
  );
}
