import 'package:flutter/material.dart';

import '../../utils/TextUtil.dart';

class DeleteData extends StatelessWidget {
  const DeleteData({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Instrucciones de Eliminación de Datos", style: TextStyle( fontSize: 40, color: Colors.white), textAlign: TextAlign.center,),
              Text(TextUtil.deleteData, style: TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
