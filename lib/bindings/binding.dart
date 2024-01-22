import 'package:get/get.dart' show Bindings, Get, Inst;
import 'package:tugas_kalkulator/jajargenjang/JajargenjangController.dart';
import 'package:tugas_kalkulator/lingkaran/LingkaranController.dart';
import 'package:tugas_kalkulator/persegi/PersegiController.dart';
import 'package:tugas_kalkulator/segitiga/SegitigaController.dart';
import 'package:tugas_kalkulator/trapesium/TrapesiumController.dart';

class segitigaC implements Bindings {
  @override
  void dependencies() {
    Get.put(SegitigaController());
  }
}

class persegiC implements Bindings {
  @override
  void dependencies() {
    Get.put(PersegiController());
  }
}

class trapesiumC implements Bindings {
  @override
  void dependencies() {
    Get.put(TrapesiumController());
  }
}

class jajargenjangC implements Bindings {
  @override
  void dependencies() {
    Get.put(JajargenjangController());
  }
}

class lingkaranC implements Bindings {
  @override
  void dependencies() {
    Get.put(LingkaranController());
  }
}

