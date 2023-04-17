import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de muebles Hnos. Pérez',
      home: const MyHomePage(title: 'Tienda de muebles Hnos. Pérez'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterOficina = 0, _counterCocina = 0;
  double _costeOficina = 199, _costeCocina = 150, _saldo = 1000;

  void _incrementCounterOficina() {
    setState(() {
      _counterOficina++;
    });
  }

  void _incrementCounterCocina() {
    setState(() {
      _counterCocina++;
    });
  }

  int _sell(double cost) {
    if (_saldo - cost >= 0) {
      _saldo -= cost;
      return 1;
    }
    else {
      return 0;
    }
  }

  void _reset() {
    setState(() {
      _counterOficina = 0;
      _counterCocina = 0;
      _saldo = 1000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset('assets/mesa-cocina-libro-nube-1_cerrada.jpeg', width: 500, height: 400),
                    const SizedBox(height: 2),
                    Text('Has comprado ${_counterCocina.toString()} mesas de cocina'),
                    ElevatedButton(
                      onPressed: () {
                        if (_sell(_costeCocina) == 1) {
                          _incrementCounterCocina();
                        }
                      },
                      child: Text('Comprar mesa de cocina (${_costeCocina.toString()}€)'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/mesaOficina.jpeg', width: 500, height: 400),
                    const SizedBox(height: 2),
                    Text('Has comprado ${_counterOficina.toString()} mesas de oficina'),
                    ElevatedButton(
                      onPressed: () {
                        if (_sell((_costeOficina)) == 1) {
                          _incrementCounterOficina();
                        }
                      },
                      child: Text('Comprar mesa de oficina (${_costeOficina.toString()}€)'),
                    ),
                  ],
                ),
              ],
            ),
            Text('Dispones de ${_saldo.toString()} €'),
            ElevatedButton(
              onPressed: () {
                _reset();
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}