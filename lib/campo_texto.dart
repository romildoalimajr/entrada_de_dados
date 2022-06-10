import 'package:flutter/material.dart';

class campo_texto extends StatefulWidget {
  const campo_texto({Key? key}) : super(key: key);

  @override
  State<campo_texto> createState() => _campo_textoState();
}

class _campo_textoState extends State<campo_texto> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(

            padding: EdgeInsets.all(32),
            child: TextField(
              //texto
             //keyboardType: TextInputType.text,
              //number
               keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite um valor",
                ),
              //enabled: false,
             // maxLength: 2,
              //maxLengthEnforced: true,
              /*style: TextStyle(
                fontSize: 25,
                color: Colors.deepOrange,
              ),*/
              //obscureText: true,
             /* onChanged: (String e){
                print("Valor digitado.: $e");
              },*/
              onSubmitted: (String e){
                print("Valor digitado.: $e");
              },
              controller: _textEditingController,
              //email
              // keyboardType: TextInputType.emailAddress,
              //data
               //keyboardType: TextInputType.datetime,
            ),
          ),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.amber,
            onPressed: (){
              print("Valor digitado.: " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}