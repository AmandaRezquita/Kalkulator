import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LingkaranController extends GetxController {
  final TextEditingController jariJariController = TextEditingController();
  final hasilLuas = ''.obs;

  void hitungLuas() {
    double jariJari = double.tryParse(jariJariController.text) ?? 0.0;
    double luas = 3.14 * jariJari * jariJari;
    print('Jari-Jari: $jariJari, Luas: $luas');
    hasilLuas.value = 'Luas Lingkaran: $luas cm²';
  }
}
