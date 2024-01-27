import 'package:flutter/material.dart';
import 'whatsapp_button.dart';

class FloresPage extends StatelessWidget {
  const FloresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flores'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo
            Image.asset(
              'imagen/logo.png',
              height: 80.0,
            ),
            const SizedBox(height: 20.0),

            // Lista de materas
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  MatersCard(
                    imagen: 'imagen/flor1.png',
                    descripcion: 'Pistilo Morado.',
                    precio: '\$125.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/flor2.png',
                    descripcion: 'Ramo en tonos pastel.',
                    precio: '\$45.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/flor3.png',
                    descripcion: 'Girasoles.',
                    precio: '\$20.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/flor4.jpg',
                    descripcion: 'Crisantemos de colores.',
                    precio: '\$45.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/flor5.png',
                    descripcion: 'Ramo de flores.',
                    precio: '\$45.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/flor6.jpg',
                    descripcion: 'Ramo de peonias rosadas.',
                    precio: '\$35.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/flor7.png',
                    descripcion: 'Ramo de flores en jarra de vidrio.',
                    precio: '\$65.000',
                  ),
                  // Agrega más tarjetas según sea necesario
                ],
              ),
            ),
          ],
        ),
      ),
      // Agrega el botón de WhatsApp
      floatingActionButton: const WhatsAppButton(),
    );
  }
}

class MatersCard extends StatelessWidget {
  final String imagen;
  final String descripcion;
  final String precio;

  const MatersCard({
    super.key,
    required this.imagen,
    required this.descripcion,
    required this.precio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(
              imagen,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  descripcion,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Precio: $precio',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
