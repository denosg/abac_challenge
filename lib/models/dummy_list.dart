import 'package:abac_challenge/models/produs/produs.dart';
import 'package:abac_challenge/models/repair_station/repair_station.dart';

const productList = [
  Produs(id: 1, name: 'Tobă sport', price: 1000),
  Produs(id: 2, name: 'Rulment', price: 50),
  Produs(id: 3, name: 'Capotă', price: 150),
  Produs(id: 4, name: 'Eleron', price: 200),
  Produs(id: 5, name: 'Ulei', price: 150),
  Produs(id: 6, name: 'Filtru ulei', price: 100),
];

const repairStationList = [
  RepairStaition(
      id: '1',
      title: 'Lorem Ipsum',
      rating: 3,
      price: 800,
      time: 2,
      picture: 'img/black.png'),
  RepairStaition(
      id: '2',
      title: 'Costelas Ind',
      rating: 5,
      price: 1000,
      time: 4,
      picture: 'img/green.jpg'),
  RepairStaition(
      id: '3',
      title: 'La Nasu',
      rating: 4,
      price: 1200,
      time: 3,
      picture: 'img/red.png'),
  RepairStaition(
      id: '3',
      title: 'Text aici',
      rating: 3,
      price: 1200,
      time: 2,
      picture: 'img/yellow.jpg'),
];
