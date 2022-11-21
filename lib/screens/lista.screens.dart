import 'package:flutter/material.dart';
import '../models/bakend.dart';
import '../models/carro.models.dart';
import 'detalle.screens.dart';
import '../widgets/carro.widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  void longPress(Carro carro) {
    setState(() {
      Backend().markCarroAsRead(carro.id);
    });
  }

  void swipe(Carro carro) {
    setState(() {
      Backend().deleteCarro(carro.id);
    });
  }

  void ontap(Carro carro, context) {
    setState(() {
      Backend().markCarroAsRead(carro.id);
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetalleScreen(carro: carro)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Backend()
          .getCarro()
          .map((carro) => CarroWidget(
                carro: carro,
                longPress: longPress,
                swipe: swipe,
                ontap: ontap,
              ))
          .toList(),
    );
  }
}

