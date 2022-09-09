import 'package:flutter/material.dart';

import '../../utils/TextUtil.dart';

class DeleteData extends StatelessWidget {
  const DeleteData({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("Instrucciones de Eliminación de Datos", style: TextStyle( fontSize: 40, color: Colors.white), textAlign: TextAlign.center,),
               SizedBox(height: 20,),
              Text(TextUtil.deleteData, style: TextStyle( color: Colors.white, fontSize: 20,),)
            ],
          ),
        ),
      ),
    );
  }
}
