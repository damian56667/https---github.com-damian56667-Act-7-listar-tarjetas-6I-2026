import 'package:flutter/material.dart';

void main() => runApp(const AppPerfumeria());

class AppPerfumeria extends StatelessWidget {
  const AppPerfumeria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosEmpleados(),
    );
  }
}

class LosEmpleados extends StatelessWidget {
  const LosEmpleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perfumería el Damian',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF800020),
        leading: const Icon(Icons.spa, color: Colors.white),
        actions: [
          IconButton(icon: const Icon(Icons.build, color: Colors.white), onPressed: () {}),
          IconButton(icon: const Icon(Icons.emergency, color: Colors.white), onPressed: () {}),
          IconButton(icon: const Icon(Icons.camera_alt, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: crearTarjeta(
                'Damian Domiguez', 
                'Gerente de Ventas', 
                'https://raw.githubusercontent.com/damian56667/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/empleados1.png'
              ),
            ),
            Expanded(
              child: crearTarjeta(
                'Ana Martínez', 
                'Especialista en Fragancias', 
                'https://raw.githubusercontent.com/damian56667/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/empleados2.png'
              ),
            ),
            Expanded(
              child: crearTarjeta(
                'Luis Rodríguez', 
                'Atención al Cliente', 
                'https://raw.githubusercontent.com/damian56667/Imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/empleados3.png'
              ),
            ),
            Expanded(
              child: crearTarjeta(
                'Carla Méndez', 
                'Control de Inventario', 
                'https://picsum.photos/id/64/200'
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget crearTarjeta(String nombre, String puesto, String urlImagen) {
    return Card(
      color: const Color.fromARGB(255, 200, 236, 207), // Verde claro suave
      elevation: 3.0,
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: const Color(0xFF800020), // Fondo guinda por si falla la imagen
            child: CircleAvatar(
              radius: 23,
              backgroundImage: NetworkImage(urlImagen),
            ),
          ),
          title: Text(
            nombre,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF2C3E50),
            ),
          ),
          subtitle: Text(
            puesto,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black87,
            ),
          ),
          trailing: const Icon(Icons.badge, color: Color(0xFF800020)),
        ),
      ),
    );
  }
}