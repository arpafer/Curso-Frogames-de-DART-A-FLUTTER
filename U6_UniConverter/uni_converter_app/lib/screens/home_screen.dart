import 'package:flutter/material.dart';
import 'package:uni_converter_app/widgets/type_converter_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController _valueConverter = TextEditingController();
  _converterUnits() {
    print("Valor recogido: ${_valueConverter.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Convertidor de unidades",
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color(0xffB23A48),
      ),
      body: SingleChildScrollView(
          child: Expanded(
        child: Container(
          color: const Color(0xffFED0BB),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TypeConversionWidget(),
              ]),
              const SizedBox(height: 38),
              const Text("Entrada",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 8,
              ),
              TextField(
                  controller: _valueConverter,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("Newtons")))
            ]),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: _converterUnits,
          label: const Text("Convertir"),
          icon: const Icon(Icons.transform)),
    );
  }
}
