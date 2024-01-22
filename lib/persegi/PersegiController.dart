import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController {
  final TextEditingController sisiController = TextEditingController();

  final hasilLuas = ''.obs;

  void hitungLuas() {
    double sisi = double.tryParse(sisiController.text) ?? 0.0;
    double luas = sisi * sisi;
    print('Sisi: $sisi, Luas: $luas');
    hasilLuas.value = 'Luas Persegi: $luas cm²';
  }
}
