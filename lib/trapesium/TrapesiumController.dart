import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrapesiumController extends GetxController {
  final TextEditingController alasAtasController = TextEditingController();
  final TextEditingController alasBawahController = TextEditingController();
  final TextEditingController tinggiController = TextEditingController();

  final hasilLuas = ''.obs;

  void hitungLuas() {
    double alasAtas = double.tryParse(alasAtasController.text) ?? 0.0;
    double alasBawah = double.tryParse(alasBawahController.text) ?? 0.0;
    double tinggi = double.tryParse(tinggiController.text) ?? 0.0;
    double luas = ((alasAtas + alasBawah) / 2) * tinggi;
    print('Alas Atas: $alasAtas, Alas Bawah: $alasBawah, Tinggi: $tinggi, Luas: $luas');
    hasilLuas.value = 'Luas Trapesium: $luas cm²';
  }
}
