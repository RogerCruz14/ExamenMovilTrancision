import 'package:flutter/cupertino.dart';

class Carro {
  final int id;
  final String nombre;
  final String marca;
  final String tipo;
  final String modelo;
  final String Descripcion;
  final String imagen;
  bool read;

  Carro({
    required this.id,
    required this.nombre,
    required this.marca,
    required this.tipo,
    required this.modelo,
    required this.Descripcion,
    required this.imagen,
    this.read = false,
  });
}

class Nombre {
  final String nombres;
  final String apellidos;
  final String curso;
  bool read;

  Nombre({
    required this.nombres,
    required this.apellidos,
    required this.curso,
    this.read = false,
  });
}
