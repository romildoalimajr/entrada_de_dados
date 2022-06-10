import 'package:entrada_de_dados/EntradaCheckBox.dart';
import 'package:entrada_de_dados/EntradaSlider.dart';
import 'package:entrada_de_dados/EntradaSwitch.dart';
import 'package:entrada_de_dados/campo_texto.dart';
import 'package:flutter/material.dart';

import 'EntradaRadioButton.dart';


void main(){
  runApp(
    MaterialApp(
      //home: campo_texto(),
      //home: EntradacheckBox(),
      //home: EntradaRadioButton(),
      //home: EntradaSwitch(),
      home: EntradaSlider(),
    )
  );
}