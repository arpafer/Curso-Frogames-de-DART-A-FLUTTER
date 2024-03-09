import 'package:flutter/material.dart';
import 'package:uni_converter_app/widgets/type_converter_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
  
}

class HomeState extends State<HomeScreen> {
   final TextEditingController _valueConverter = TextEditingController();
  String _onzaFuerzaValue = "0.0";
  String _gramoFuerza = "0.0";
  String _kilonewton = "0.0";
  String _libraFuerza = "0.0";
  String _kilogramoFuerza = "0.0";
  String _dina = "0.0";

  _converterUnits() {    
    double valueConverter = double.parse(_valueConverter.text);
    setState(() {
       _onzaFuerzaValue = (valueConverter * 3.59694).toString();
    });    
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
                      border: OutlineInputBorder(), label: Text("Newtons"))),
              const SizedBox(height: 16),
              const Text("Resultado",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 8),              
              Column(
                children: [
                  ListTile(
                     title: const Text("Dina"),
                    subtitle: const Text('1.00E-5N'),
                    leading: const Text("dyn", style: TextStyle(backgroundColor: Colors.lightBlueAccent)),
                    trailing: Text(_dina)
                  ),
                   ListTile(
                     title: const Text("Kilogramo Fuerza"),
                    subtitle: const Text('9.81 N'),
                    leading: const Text("kgf", style: TextStyle(backgroundColor: Colors.lightBlueAccent)),
                    trailing: Text(_kilogramoFuerza)
                  ),
                   ListTile(
                     title: const Text("Libra Fuerza"),
                    subtitle: const Text('4.45 N'),
                    leading: const Text("lbf", style: TextStyle(backgroundColor: Colors.lightBlueAccent)),
                    trailing: Text(_libraFuerza)
                  ),
                   ListTile(
                     title: const Text("Kilonewton"),
                    subtitle: const Text('1,000 N'),
                    leading: const Text("kN", style: TextStyle(backgroundColor: Colors.lightBlueAccent)),
                    trailing: Text(_kilonewton)
                  ),
                   ListTile(
                     title: const Text("Gramo Fuerza"),
                    subtitle: const Text('0.01 N'),
                    leading: const Text("gf", style: TextStyle(backgroundColor: Colors.lightBlueAccent)),
                    trailing: Text(_gramoFuerza)
                  ),
                  ListTile(
                    title: const Text("Onza Fuerza"),
                    subtitle: const Text('0.28 N'),
                    leading: const Text("ozf", style: TextStyle(backgroundColor: Colors.lightBlueAccent)),
                    trailing: Text(_onzaFuerzaValue)
                  ),                
                ],
              )
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
