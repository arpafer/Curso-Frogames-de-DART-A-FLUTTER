import 'dart:io';

import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar datos del usuario"),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),),
      ),
      body: _Content()
    );
  }
}

class _Content extends StatefulWidget {
  @override
  State<StatefulWidget> createState()  => _ContentState();
      
}

class _ContentState extends State<_Content> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController webSiteController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController latitudController = TextEditingController();
  final TextEditingController longitudController = TextEditingController();
  File? galleryFile = null;
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode webSiteFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode latitudFocusNode = FocusNode();
  final FocusNode longitudFocusNode = FocusNode();
  
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
       child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipOval(
                  child: Center(child: galleryFile == null
                  ? Image.asset("assets/icons/usuario.png", 
                        width: 200, height: 200, fit: BoxFit.fill) 
                  : Image.file(galleryFile!, 
                        width: 200, height: 200, fit: BoxFit.fill) 
                  )
                  ),              
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: IconButton(onPressed: () {}, icon: const Icon(Icons.image_search_outlined))
                )
          ]
            ),
            const SizedBox(height: 12),
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              focusNode: nameFocusNode,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name"
              ),
              onSubmitted: (value) {
                nameFocusNode.unfocus();
                FocusScope.of(context).requestFocus(emailFocusNode);
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              focusNode: emailFocusNode,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email"
              ),
              onSubmitted: (value) {
                emailFocusNode.unfocus();
                FocusScope.of(context).requestFocus(webSiteFocusNode);
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: webSiteController,
              keyboardType: TextInputType.url,
              focusNode: webSiteFocusNode,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "WebSite"
              ),
              onSubmitted: (_) {
                webSiteFocusNode.unfocus();
                FocusScope.of(context).requestFocus(phoneFocusNode);
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              focusNode: phoneFocusNode,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Phone"
              ),
              onSubmitted: (_) {
                phoneFocusNode.unfocus();
                FocusScope.of(context).requestFocus(latitudFocusNode);
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: latitudController,
              keyboardType: TextInputType.number,
              focusNode: latitudFocusNode,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Latitud"
              ),
              onSubmitted: (_) {
                latitudFocusNode.unfocus();
                FocusScope.of(context).requestFocus(longitudFocusNode);
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: longitudController,
              keyboardType: TextInputType.number,
              focusNode: longitudFocusNode,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Longitud"
              ),
              onSubmitted: (_) {
                longitudFocusNode.unfocus();                
              },
            )
          ],
        )
       ));
  }
  
}
