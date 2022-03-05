import 'package:controller2/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcular IMC'),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                onChanged: controller.setPeso,
                decoration: const InputDecoration(
                  labelText: 'Peso',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                onChanged: controller.setAltura,
                decoration: const InputDecoration(
                  labelText: 'Altura',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    controller.classificarImc();
                  });
                },
                child: const Text('Calcule seu IMC'),
              ),
              const SizedBox(height: 30),
              Text(controller.resultado),
            ],
          ),
        ),
      ),
    );
  }
}
