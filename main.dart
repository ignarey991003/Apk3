import 'package:flutter/material.dart';
import 'pantallas/inventario.dart';
import 'pantallas/ventas.dart';
import 'pantallas/estadisticas.dart';

void main() {
  runApp(TiendaApp());
}

class TiendaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control de Tienda',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Control de Tienda')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Inventario'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => InventarioPage()),
              ),
            ),
            ElevatedButton(
              child: Text('Ventas'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => VentasPage()),
              ),
            ),
            ElevatedButton(
              child: Text('Estadísticas'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => EstadisticasPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

