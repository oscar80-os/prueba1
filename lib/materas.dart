import 'package:flutter/material.dart';
import 'whatsapp_button.dart';

class MaterasPage extends StatelessWidget {
  const MaterasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materas'),
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
                    imagen: 'imagen/anime2.png',
                    descripcion: 'Matera anime pintada a mano.',
                    precio: '\$45.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/anime.png',
                    descripcion: 'Matera anime pintada a mano.',
                    precio: '\$45.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/astro.png',
                    descripcion:
                        'Matera redonda pintada a mano con tema de astronauta.',
                    precio: '\$40.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/calavera.png',
                    descripcion: 'Matera craneo mexico, pintada a mano.',
                    precio: '\$55.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/camara.png',
                    descripcion: 'Matera camara, pintada a mano.',
                    precio: '\$45.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/dart.png',
                    descripcion: 'Matera Darth Vader pintado a mano.',
                    precio: '\$55.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/mano.png',
                    descripcion:
                        'Matera redonda pintada a mano con tema de mano.',
                    precio: '\$40.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/mariposa.png',
                    descripcion:
                        'Matera redonda pintada a mano con tema de mariposa.',
                    precio: '\$45.000',
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
