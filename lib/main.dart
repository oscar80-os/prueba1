import 'package:flutter/material.dart';
import 'package:tienda_ding_dong/jardines.dart';
import 'Hiervasaromaticas.dart';
import 'sorteo.dart';
import 'materas.dart';
import 'flores.dart';
import 'whatsapp_button.dart';
import 'eventos.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: const MyHomePage(),
        floatingActionButton: const WhatsAppButton(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();

  final List<String> menuItems = [
    'Sorteo',
    'Materas',
    'Flores',
    'Jardines',
    'Hierbas aromática',
    'Eventos',
  ];

  final List<Producto> productos = [
    Producto(
      nombre: 'Syngonium',
      descripcion:
          'Syngonium podophyllum es una especie de planta aroide que comúnmente se cultiva como planta de interior. ',
      precio: '\$45.000',
      imagen: 'imagen/singonio.png',
    ),
    Producto(
      nombre: 'Pino limón',
      descripcion:
          'El pino limón es ideal para jardines, ya que se puede manejar en diferentes formas y como setos. Se debe regar cada 4 o 5 días y abonar cada 15 días con fertilizantes para follaje',
      precio: '\$55.000',
      imagen: 'imagen/cedro.png',
    ),
    Producto(
      nombre: 'Cóleos',
      descripcion:
          'Los cóleos son plantas perennes oriundas de África y Asia tropical.',
      precio: '\$55.000',
      imagen: 'imagen/coleo.png',
    ),
    Producto(
      nombre: 'Espada de San Jorge en casa',
      descripcion:
          'necesita muy poco riego, solamente una o dos veces al mes, siempre cuidando que el sustrato quede seco',
      precio: '\$50.000',
      imagen: 'imagen/espada.png',
    ),
    Producto(
      nombre: 'Pino Libro',
      descripcion:
          'Es una especie que pertenece a las gimnospermas cuya aparición en la tierra fue fundamental para la expansión de las plantas en los continentes',
      precio: '\$45.000',
      imagen: 'imagen/libro.png',
    ),
    Producto(
      nombre: 'Plantas carnívoras',
      descripcion:
          'Es conocido ya de sobra que las moscas, mosquitos, las arañas y hormigas son los insectos más comunes para la alimentación de las plantas carnívoras',
      precio: '\$90.000',
      imagen: 'imagen/carnivora.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(60.0),
          child: Image.asset(
            'imagen/logo.png',
            height: 80.0,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: menuItems
                .map((item) => ElevatedButton(
                      onPressed: () {
                        navigateToPage(item);
                      },
                      child: Text(item),
                    ))
                .toList(),
          ),
        ),
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            controller: _searchController,
            onChanged: (value) {
              setState(() {
                // No es necesario realizar ninguna acción específica aquí
              });
            },
            decoration: const InputDecoration(
              hintText: 'Buscar',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 32.0),
        Expanded(
          child: ListView.builder(
            itemCount: productos.length,
            itemBuilder: (context, index) {
              // Filtrar productos según la búsqueda
              final nombreProducto = productos[index].nombre.toLowerCase();
              final textoBusqueda = _searchController.text.toLowerCase();

              if (textoBusqueda.isNotEmpty &&
                  !nombreProducto.contains(textoBusqueda)) {
                return Container();
              }

              return buildProductCard(productos[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget buildProductCard(Producto producto) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(
              producto.imagen,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  producto.nombre,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(producto.descripcion),
                Text('Precio: ${producto.precio}'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToPage(String item) {
    // Navegar a la página correspondiente
    switch (item) {
      case 'Sorteo':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SorteoPage()),
        );
        break;
      case 'Materas':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MaterasPage()),
        );
        break;
      case 'Flores':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FloresPage()),
        );
        break;
      case 'Jardines':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const JardinesPage()),
        );
        break;
      case 'Hierbas aromática':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const HiervasaromaticasPage()),
        );
        break;
      case 'Eventos':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EventosPage()),
        );
        break;
    }
  }
}

class Producto {
  final String nombre;
  final String descripcion;
  final String precio;
  final String imagen;

  Producto({
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.imagen,
  });
}
