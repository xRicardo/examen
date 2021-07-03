import 'package:flutter/material.dart';
//estilos
import 'package:examen/src/styles/styles.dart';
//Widgets
import 'package:examen/src/widgets/app_bar.dart';
import 'package:examen/src/widgets/menu_lateral.dart';
import 'package:examen/src/widgets/swiper_populares.dart';
import 'package:examen/src/widgets/swiper_listado.dart';
import 'package:examen/src/widgets/title.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 0;
  List<IconData> data = [
    Icons.home_outlined,
    Icons.add_box_outlined,
    Icons.favorite_outline_sharp,
    Icons.search,
    Icons.menu
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: menuLateral(context),
        key: _scaffoldKey,
        backgroundColor: colorBG,
        bottomNavigationBar: buildPadding(context),
        body: CustomScrollView(
          slivers: <Widget>[
            appBar(context, _scaffoldKey),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  titles('Premieres'),
                  swiperPopulares(),
                  titles('In this week'),
                  item(),
                  item1(),
                  item2(),
                  item3(),
                ],
              ),
            ])),
          ],
        ));
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        child: Container(
          height: 70,
          width: double.infinity,
          child: ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (ctx, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedItemIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  width: 35,
                  decoration: BoxDecoration(
                    border: index == _selectedItemIndex
                        ? Border(
                            top: BorderSide(width: 3.0, color: Colors.purple))
                        : null,
                    gradient: index == _selectedItemIndex
                        ? LinearGradient(
                            colors: [
                                Colors.indigoAccent.withOpacity(0.3),
                                Colors.indigoAccent.withOpacity(0.015),
                              ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)
                        // color: index == _selectedItemIndex ? Colors.purple : Colors.white,
                        : null,
                  ),
                  child: Icon(
                    data[index],
                    size: 35,
                    color: index == _selectedItemIndex
                        ? Colors.purple
                        : Colors.grey.shade800,
                  ),
                ),
              ),
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
// @override
// Widget build(BuildContext context) {
//   return Container(
//     child: Text('Premieres'),
//   );
// }
