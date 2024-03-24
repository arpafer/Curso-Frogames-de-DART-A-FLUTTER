import 'dart:io';

import 'package:flutter/material.dart';
import 'package:profile_app/preferences/user_preferences.dart';
import 'package:profile_app/utils/constants.dart';
import 'package:profile_app/widgets/item_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  _showMenu(BuildContext context) {
    // obtener el renderbox del overlay(superposición) en el cohntexto actual
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

     showMenu(
          context: context,
          position: RelativeRect.fromRect(
              // Posición del menú en la parte superior izquierda del overlay
              Rect.fromPoints(
                  Offset.zero,
                  overlay
                      .localToGlobal(overlay.size.bottomCenter(Offset.zero))),
              Offset.zero & overlay.size),
          items: [
            const PopupMenuItem(
                value: 1, 
                child: Text("Editar datos del usuario")),
            const PopupMenuItem(
              value: 2,
              child: Text("Mostrando mensaje"),            
            ),
            const PopupMenuItem(
              value: 3,
              child: Text("Eliminar datos del usuario")
            )
          ]).then((value) => {
            // Manejar la opción seleccionado después de cerrar el menú
            if (value == 1)
              {
                // navegar a la pantalla de edición
                Navigator.pushNamed(context, editScreen)
              } else if (value == 2) {
                 print("Mostrando mensaje")
              }
            else
              {
                UserPreferences.removeValues()                
              }
          });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => _showMenu(context), icon: const Icon(Icons.menu)),
      ),
      body: _Content(),
    );
  }
}

class _Content extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContentState();
  
}

class _ContentState extends State<_Content> {
  
  final String nameState = UserPreferences.name;
  final String emailState = UserPreferences.email;
  final String websiteState = UserPreferences.website;
  final String phoneState = UserPreferences.phone;
  final double latitudState = UserPreferences.latitude;
  final double longitudState = UserPreferences.longitude;  
  final dynamic galleryFile = UserPreferences.photoPath;

  @override
  Widget build(BuildContext context) {    
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           ClipOval(child: Center(
            child: galleryFile is String? 
              Image.asset(galleryFile, width: 200, height: 200, fit: BoxFit.fill):
              Image.file(galleryFile, width: 200, height: 200, fit: BoxFit.fill)
           )),
            InkWell(
              onTap: () => print(nameState),
              child: ItemData(category: "Nombre", value: nameState)),
               InkWell(
              onTap: () => print(emailState),
              child: ItemData(category: "Correo electrónico", value: emailState)),
               InkWell(
              onTap: () => print(websiteState),
              child: ItemData(category: "Sitio web", value: websiteState)),
               InkWell(
              onTap: () => print(phoneState),
              child: ItemData(category: "Teléfono", value: phoneState)),
               InkWell(
              onTap: () => print("$latitudState, $longitudState"),
              child: ItemData(category: "Ubicación", value: "$latitudState, $longitudState")),
        ])
    );
  }
  
}
