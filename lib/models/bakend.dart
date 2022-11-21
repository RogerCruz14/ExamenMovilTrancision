import 'dart:ui';
import 'carro.models.dart';

class Backend {
  static final Backend _backend = Backend._internal();
  factory Backend() {
    return _backend;
  }
  Backend._internal();
  final _carros = [
    Carro(
        id: 1,
        nombre: 'BMW 218i Gran Coupé M Sport',
        marca: 'BMW',
        tipo: 'Deportivo',
        modelo: '2021',
        Descripcion:
            'El primer BMW Serie 2 Gran Coupé introduce una nueva forma de autoridad con un carácter atrevido en la clase compacta. Es sobre todo su estética sin concesiones, orientada al rendimiento, lo que revela claramente sus ambiciones. No es elegante, sino original. No es convencional, sino individual. No es ordinario, sino extraordinario. ',
        imagen: 'assets/BMW.jpg'),
    Carro(
        id: 2,
        nombre: 'FERRARI 488 SPIDER',
        marca: 'Ferrari',
        tipo: 'Deportivo',
        modelo: '2020',
        Descripcion:
            'El 488 tiene las clásicas proporciones de un auto deportivo con motor central trasero de Ferrari: un alerón delantero corto y musculoso en el que se encaja el parachoques, lo que le da a toda la parte delantera del auto una sensación de potencia y velocidad, e inmediatamente llama la atención hacia los flancos que presentan nuevos tomas de aire laterales para los intercoolers.',
        imagen: 'assets/Ferrari.jpg'),
    Carro(
        id: 3,
        nombre: 'Ford Fusion',
        marca: 'Ford',
        tipo: 'Eléctrico',
        modelo: '2020',
        Descripcion:
            'El Ford introduce formas nuevas de visualización de caracter atractivo y económico. Su cabina es intuitiva y los sistemas están bien equilibrados para ofrecer una mejor autonomía.',
        imagen: 'assets/Ford.jpg'),
    Carro(
        id: 4,
        nombre: 'DN8 Hyundai Sonata',
        marca: 'Hyundai',
        tipo: 'Deportivo',
        modelo: '2022',
        Descripcion:
            'El Hyundai Sonata es un sedán mediano cómodo que es económico en la bomba de gasolina. Su espaciosa cabina y su intuitivo sistema de infoentretenimiento ofrecen aún más atractivo, pero los motores débiles en las versiones inferiores y la falta de atletismo hacen que sea menos divertido de conducir que muchos rivales.',
        imagen: 'assets/hyundai.jpg'),
    Carro(
        id: 5,
        nombre: 'Mazda 3 Hatchback',
        marca: 'Mazda',
        tipo: 'Sunroof eléctrico',
        modelo: '2021',
        Descripcion:
            'El All-New Mazda 3 es el primer vehículo que plasma la evolución del diseño Kodo, exclusivo de Mazda, alcanzando una estética superior, esculpida a mano en arcilla, para lograr que las luces y las sombras tomen vida en sus reflejos.',
        imagen: 'assets/mazda.jpg'),
  ];

  List<Carro> getCarro() {
    return _carros;
  }

  void markCarroAsRead(int id) {
    final index = _carros.indexWhere((carro) => carro.id == id);
    _carros[index].read = true;
  }

  void deleteCarro(int id) {
    _carros.removeWhere((carro) => carro.id == id);
  }
}
