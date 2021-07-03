import 'package:examen/src/styles/styles.dart';
import 'package:examen/src/widgets/title.dart';
import 'package:flutter/material.dart';

Widget swiperListado() {
  return Column(
    children: <Widget>[
      GestureDetector(
        onTap: () {
          print('Voy para allá');
        },
        child: Image(
          image: AssetImage('dragoncito.jpg'),
          fit: BoxFit.fill,
          width: 100.0,
          height: 100.0,
        ),
      )
    ],
  );
}

// Widget listado() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(
//         'How to Train Your Dragon',
//         textAlign: TextAlign.left,
//         style: titlesRecipeStyle,
//         ),
//         Text(
//           'Jacynthe Lubowitz 2019'
//         ),
//     ],
//   );
// }

Widget item() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: 100,
      child: Row(children: <Widget>[
        Container(
          height: 70,
          width: 70,
          child: Image.asset(
            'dragoncito.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            title(
              'How to Train Your Dragon',
            ),
            title(
              'Jacynthe Lubowitz 2019',
            ),
            title(
              '110 min',
            ),
          ],
        ),
      ]));
}

Widget item1() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: 100,
      child: Row(children: <Widget>[
        Container(
          height: 70,
          width: 70,
          child: Image.asset(
            'sonic.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            title(
              'Sonic the Hedgehog',
            ),
            title(
              'Irene Amato 2020',
            ),
            title(
              '110 min',
            ),
          ],
        ),
      ]));
}

Widget item2() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: 100,
      child: Row(children: <Widget>[
        Container(
          height: 70,
          width: 70,
          child: Image.asset(
            'abominable.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            title(
              'Abominable',
            ),
            title(
              'Tito Predovic 2019',
            ),
            title(
              '110 min',
            ),
          ],
        ),
      ]));
}

Widget item3() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: 100,
      child: Row(children: <Widget>[
        Container(
          height: 70,
          width: 70,
          child: Image.asset(
            'aves.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            title(
              'Birds of Prey',
            ),
            title(
              'Tito Predovic 2019',
            ),
            title(
              '110 min',
            ),
          ],
        ),
      ]));
}
