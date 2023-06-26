import 'package:flutter/material.dart';
import 'package:pawwws/appstyle/style.dart';
import '../components/itemAppBar.dart';
import 'package:clippy_flutter/arc.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(padding: EdgeInsets.all(16),
          child: Image.asset('assets/items/1.jpg', height: 300),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30, child: Container(
              width: MediaQuery.of(context).size.width,
              color: white,
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(
                    top: 50,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      Text('Whiskas', style: blacktxt)
                    ],
                  ),)
                ],
              ),
              ),
            ))
        ],
      ),
    );
  }
}