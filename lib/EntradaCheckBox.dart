import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntradacheckBox extends StatefulWidget {
  const EntradacheckBox({Key? key}) : super(key: key);

  @override
  State<EntradacheckBox> createState() => _EntradacheckBoxState();
}

class _EntradacheckBoxState extends State<EntradacheckBox> {

  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;
  bool _comidaJaponesa = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada CheckBox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            CheckboxListTile(
                title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida do mundo"),
                //selected: true,
                //activeColor: Colors.red,
                value: _comidaBrasileira,
                //secondary: Icon(Icons.add_box),
                onChanged: (bool? valor){
                  setState(() {
                    _comidaBrasileira = valor!;
                  });
                }
            ),

            CheckboxListTile(
                title: Text("Comida Mexicana"),
                subtitle: Text("A melhor comida do mundo"),
                //selected: true,
                //activeColor: Colors.red,
                value: _comidaMexicana,
                //secondary: Icon(Icons.add_box),
                onChanged: (bool? valor){
                  setState(() {
                    _comidaMexicana = valor!;
                  });
                }
            ),

            CheckboxListTile(
                title: Text("Comida Japonesa"),
                subtitle: Text("A melhor comida do mundo"),
                //selected: true,
                //activeColor: Colors.red,
                value: _comidaJaponesa,
                //secondary: Icon(Icons.add_box),
                onChanged: (bool? valor){
                  setState(() {
                    _comidaJaponesa = valor!;
                  });
                }
            ),
            RaisedButton(
              child: Text(
                  "Salvar",
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,

              ),
              ),

              onPressed: (){
                print(
                    "Comida Brasileira: " + _comidaBrasileira.toString() +
                    " Comida Mexicana: " + _comidaMexicana.toString() +
                    " Comida Japonesa: " + _comidaJaponesa.toString()
                );
              }
            ),
            /*
            Text("Comida Brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool? valor){
                setState((){
                  _estaSelecionado = valor!;
                });
                print("Checkbox: " + valor.toString());
              },
            ),
            */
          ],
        ),

      ),
    );
  }
}
