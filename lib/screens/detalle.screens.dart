import 'package:flutter/material.dart';
import '../models/carro.models.dart';

class DetalleScreen extends StatelessWidget {
  final Carro carro;
  TextStyle allsize = TextStyle(fontSize: 17);
  BoxDecoration linesize = BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 2, color: Colors.pink)
      ),
  );

  DetalleScreen({Key? key, required this.carro}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(carro.nombre),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(carro.imagen))),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Text(
                carro.marca,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(carro.nombre, style: allsize),
                  Text(
                    carro.tipo,
                    style: TextStyle(fontSize: 17, color: Colors.amber),
                  ),
                ],
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Text(carro.Descripcion.toString(), style: allsize),
            Center(
                child: Container(
              child: ElevatedButton(
                child: Text(
                  'Listo!',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
