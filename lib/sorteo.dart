import 'package:flutter/material.dart';
import 'whatsapp_button.dart';

class SorteoPage extends StatelessWidget {
  const SorteoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sorteo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'imagen/logo.png',
              height: 80.0,
            ),
            const SizedBox(height: 20.0),

            // Imagen y Descripción
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'imagen/tu_imagen.png', // Reemplaza con la ruta de tu imagen
                    height: 200.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Descripción de la imagen:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Aquí puedes proporcionar información sobre la imagen.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            // Formulario
            Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                  ),
                ),
                const SizedBox(height: 10.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Teléfono',
                  ),
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Acción al enviar el formulario
                  },
                  child: const Text('Participar en el sorteo'),
                ),
              ],
            ),
          ],
        ),
      ),
      // Agrega el botón de WhatsApp
      floatingActionButton: const WhatsAppButton(),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SorteoPage(),
  ));
}
