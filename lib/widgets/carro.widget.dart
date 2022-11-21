import 'package:flutter/material.dart';
import '../models/carro.models.dart';

class CarroWidget extends StatelessWidget {
  final Carro carro;
  final Function longPress;
  final Function swipe;
  final Function ontap;
  TextStyle allsize = TextStyle(fontSize: 15);

  CarroWidget({
    Key? key,
    required this.carro,
    required this.longPress,
    required this.swipe,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () => longPress(carro),
        onHorizontalDragEnd: (detalles) => swipe(carro),
        onTap: () => ontap(
              carro,
              context,
            ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black),
            ),
          ),
          margin: EdgeInsets.all(10.0),
          child: Row(children: <Widget>[
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: carro.read ? Colors.blueGrey : Colors.deepOrange,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(carro.marca, style: allsize),
                  Text(carro.nombre,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(carro.tipo, style: allsize),
                ],
              ),
            ),
          ]),
        ));
  }
}
