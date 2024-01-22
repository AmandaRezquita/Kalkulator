import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController {
  final TextEditingController alasController = TextEditingController();
  final TextEditingController tinggiController = TextEditingController();

  final hasilLuas = ''.obs;

  void hitungLuas() {
    double alas = double.tryParse(alasController.text) ?? 0.0;
    double tinggi = double.tryParse(tinggiController.text) ?? 0.0;
    double luas = (alas * tinggi) / 2;
    print('Alas: $alas, Tinggi: $tinggi, Luas: $luas');
    hasilLuas.value = 'Luas Segitiga: $luas cm²';
  }
}
