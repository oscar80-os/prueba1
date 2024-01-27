import 'package:flutter/material.dart';
import 'whatsapp_button.dart';

class EventosPage extends StatelessWidget {
  const EventosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eventos'),
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
                    imagen: 'imagen/21.png',
                    descripcion: 'Matrimonios.',
                    precio: 'SOLICITAR DE COTIZACIÓN',
                  ),
                  MatersCard(
                    imagen: 'imagen/22.png',
                    descripcion: 'Arreglos florales.',
                    precio: 'SOLICITAR DE COTIZACIÓN',
                  ),
                  MatersCard(
                    imagen: 'imagen/23.png',
                    descripcion: 'Decoración de mesas para eventos.',
                    precio: 'SOLICITAR DE COTIZACIÓN',
                  ),
                  MatersCard(
                    imagen: 'imagen/24.png',
                    descripcion:
                        'Decoración de mesas para primeras comuniones.',
                    precio: 'SOLICITAR DE COTIZACIÓN',
                  ),
                  MatersCard(
                    imagen: 'imagen/25.png',
                    descripcion: 'Eventos empresariales.',
                    precio: 'SOLICITAR DE COTIZACIÓN',
                  ),
                  MatersCard(
                    imagen: 'imagen/26.png',
                    descripcion: 'Decoracion matrimonios.',
                    precio: 'SOLICITAR DE COTIZACIÓN',
                  ),
                  MatersCard(
                    imagen: 'imagen/27.png',
                    descripcion: 'Decoracion al aire libre.',
                    precio: 'SOLICITAR DE COTIZACIÓN',
                  ),
                  MatersCard(
                    imagen: 'imagen/28.png',
                    descripcion: 'Decoracion para cumpleaños.',
                    precio: 'SOLICITAR DE COTIZACIÓN',
                  ),
                  MatersCard(
                    imagen: 'imagen/29.png',
                    descripcion: 'Despedida de soltero.',
                    precio: 'SOLICITAR DE COTIZACIÓN',
                  ),
                  MatersCard(
                    imagen: 'imagen/30.png',
                    descripcion: 'Decoracion para matrimonios.',
                    precio: 'SOLICITAR DE COTIZACIÓN',
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
