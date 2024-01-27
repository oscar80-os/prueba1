import 'package:flutter/material.dart';
import 'whatsapp_button.dart';

class JardinesPage extends StatelessWidget {
  const JardinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jardines'),
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
                    imagen: 'imagen/40.png',
                    descripcion:
                        'La serena belleza de un exuberante jardín, donde una variada colección de plantas de distintas especies se despliega en armonía. Matas de tamaños diversos, desde grandes y majestuosas hasta pequeñas y delicadas, ocupan macetas que salpican el paisaje. La riqueza de colores y texturas se entrelaza, creando un escenario vibrante y equilibrado que invita a explorar la diversidad botánica en cada rincón de este idílico rincón verde.',
                    precio: '\$350.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/41.png',
                    descripcion:
                        'La elegancia de un estante metálico dividido en cuatro secciones, cada una de ellas alberga una planta única y una delicada pieza de porcelana. La fusión de elementos naturales y artificiales crea una composición armoniosa, donde las plantas aportan vida y frescura, mientras que las porcelanas añaden un toque de refinamiento. Este estante se convierte en un escenario encantador donde la naturaleza y la artesanía convergen, creando una experiencia visualmente cautivadora.',
                    precio: '\$320.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/42.png',
                    descripcion:
                        'Encantadora esquina adornada con cuatro plantas en macetas blancas. Tres de estas plantas, de tamaño pequeño, están cuidadosamente dispuestas en un banco de madera, añadiendo un toque de frescura y naturaleza al entorno. Destacando en el suelo, una planta de mayor tamaño en una maceta blanca añade un elemento distintivo y visualmente llamativo. La combinación de las macetas blancas y el mobiliario de madera crea una atmósfera equilibrada y estéticamente agradable en este rincón verde.',
                    precio: '\$180.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/43.png',
                    descripcion:
                        'Encantadora escena de un estante de madera que alberga varias suculentas en pequeñas macetas, cada una exhibiendo una paleta de colores vibrantes y diversos. Estas suculentas, con sus formas únicas y follaje exuberante, crean una composición visualmente atractiva. La elección de materas de diferentes colores añade un toque de vivacidad y eclecticismo al conjunto, generando un agradable contraste con la madera del estante. Este rincón armonioso ofrece una visión encantadora de la diversidad de las suculentas y su capacidad para embellecer cualquier espacio.',
                    precio: '\$130.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/44.png',
                    descripcion:
                        'La entrada de esta casa se embellece con un pintoresco jardín en materas de madera rústica. Un conjunto de plantas cuidadosamente seleccionadas y dispuestas en estas macetas añade un toque acogedor y natural al entorno. La madera rústica de las materas agrega un encanto adicional, creando una sensación cálida y orgánica. Este jardín en la entrada no solo sirve como un elemento decorativo, sino que también da la bienvenida a los visitantes con su belleza natural y su estética campestre, transformando la entrada en un espacio acogedor y encantador.',
                    precio: '\$180.000',
                  ),
                  MatersCard(
                    imagen: 'imagen/45.png',
                    descripcion:
                        'encantador jardín colgante en un balcón, donde la vegetación florece en un espacio limitado. Diversas plantas en macetas suspendidas crean una cascada verde, añadiendo vida y color al entorno. Además, algunas matas estratégicamente colocadas en la baranda del balcón contribuyen a maximizar el uso del espacio disponible. Este jardín en altura no solo embellece el balcón, sino que también proporciona un oasis natural que invita a disfrutar del aire fresco y la naturaleza en un entorno urbano.',
                    precio: '\$380.000',
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
