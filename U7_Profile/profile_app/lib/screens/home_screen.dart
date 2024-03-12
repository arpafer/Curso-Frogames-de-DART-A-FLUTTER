import 'package:flutter/material.dart';
import 'package:profile_app/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  _showMenu(BuildContext context) {
    // obtener el renderbox del overlay(superposición) en el cohntexto actual
    RenderBox overlay =
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
                value: 1, child: Text("Editar datos del usuario")),
            const PopupMenuItem(
              value: 2,
              child: Text("Mostrando mensaje"),
            )
          ]).then((value) => {
            // Manejar la opción seleccionado después de cerrar el menú
            if (value == 1)
              {
                // navegar a la pantalla de edición
                Navigator.pushNamed(context, editScreen)
              }
            else
              {print("Mostrando mensaje")}
          });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        leading: IconButton(
            onPressed: _showMenu(context), icon: const Icon(Icons.menu)),
      ),
    );
  }
}
