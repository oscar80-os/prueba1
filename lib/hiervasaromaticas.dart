// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'whatsapp_button.dart'; // Importa el archivo WhatsAppButton

class HiervasaromaticasPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HiervasaromaticasPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hierbas aromáticas'),
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
                    imagen: 'imagen/31.png',
                    descripcion:
                        'El estragón, Su particular sabor y aroma favorece la digestión, previene las úlceras en el estómago y es efectivo para tratar la gastritis. También, protege el hígado, ayuda a combatir los parásitos y las lombrices.',
                    precio: '\$25.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/32.png',
                    descripcion:
                        'El eneldo, guarda cierta similitud con el hinojo y el anís, por su aroma y sabor anisado. Sus hojas, flores y semillas se utilizan como infusión para tratar la acidez gástrica, así como para aumentar la formación de leche materna',
                    precio: '\$15.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/33.png',
                    descripcion:
                        'El cebollín, Es una planta que florece también durante todo el año y tiene un suave sabor a cebolla, pero al mismo tiempo a un toque de ajo. Esta hierba aromática mejora la salud ósea y los ciclos del sueño, igualmente tiene un efecto favorable en la reducción de los niveles de colesterol, triglicéridos y glucosa en la sangre.',
                    precio: '\$25.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/34.png',
                    descripcion:
                        'La albahaca, tanto sus hojas, como tallos y flores son utilizados con fines terapéuticos, pues es una de las plantas medicinales idóneas para tratar problemas digestivos, además es aperitiva, analgésica, antiinflamatoria y antiespasmódica.',
                    precio: '\$20.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/35.png',
                    descripcion:
                        'La salvia, Esta planta silvestre de hermosas flores, que varían de color entre violeta, blanco y negro, contiene un sinfín de propiedades beneficiosas para el organismo. Esta hierba aromática actúa como un poderoso antiinflamatorio, antiséptico y antiespasmódico.',
                    precio: '\$28.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/36.png',
                    descripcion:
                        'El romero, Es una de las más recomendables para la migraña, así como para el colesterol alto. Además, es diurética y antioxidante.',
                    precio: '\$22.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/37.png',
                    descripcion:
                        'El orégano, utilizado en remedios naturales y como ingrediente esencial de la cocina mediterránea. Sus propiedades antioxidantes y antimicrobianas, funciona muy bien para tratamientos del sistema digestivo, afecciones del sistema respiratorio, entre otros.',
                    precio: '\$27.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/38.png',
                    descripcion:
                        'La menta, Sus hojas de aroma astringente, fresco y mentolado otorgan tranquilidad al cuerpo. Generalmente es usado como como aceite esencial para aliviar jaquecas y dolores musculares. También, para tratar problemas digestivos.',
                    precio: '\$30.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/39.png',
                    descripcion:
                        'La mejorana, Entre las plantas aromáticas y condimentarias, la mejorana se destaca por su poderosa fragancia y por ser una de las plantas medicinales para aliviar problemas digestivos y musculoesqueléticos. Sus hojas y flores desprenden un aroma penetrante, más intenso que el del orégano.',
                    precio: '\$28.000',
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
