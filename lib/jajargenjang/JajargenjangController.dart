import 'package:get/get.dart';
import 'package:flutter/material.dart';

class JajargenjangController extends GetxController {
  final TextEditingController alasController = TextEditingController();
  final TextEditingController tinggiController = TextEditingController();

  final hasilLuas = ''.obs;

  void hitungLuas() {
    double alas = double.tryParse(alasController.text) ?? 0.0;
    double tinggi = double.tryParse(tinggiController.text) ?? 0.0;
    double luas = alas * tinggi;
    print('Alas: $alas, Tinggi: $tinggi, Luas: $luas');
    hasilLuas.value = 'Luas Jajargenjang: $luas cm²';
  }
}
