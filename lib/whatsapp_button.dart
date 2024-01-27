import 'package:flutter/material.dart';

class WhatsAppButton extends StatelessWidget {
  const WhatsAppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _launchWhatsApp();
      },
      child: Image.asset('imagen/whatsapp.png', width: 360.0, height: 360.0),
    );
  }

  void _launchWhatsApp() async {
    // Cambia el número a tu número de WhatsApp y agrega el prefijo del país
    String phoneNumber = '+573188743494';
    String message = 'Hola, ¿cómo puedo ayudarte?';

    String url = 'https://wa.me/$phoneNumber/?text=${Uri.encodeFull(message)}';

    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {}
  }

  canLaunch(String url) {}

  launch(String url) {}
}
