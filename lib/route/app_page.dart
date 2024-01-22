import 'package:get/get.dart';
import 'package:tugas_kalkulator/bindings/binding.dart';
import 'package:tugas_kalkulator/jajargenjang/jajargenjang.dart';
import 'package:tugas_kalkulator/lingkaran/lingkaran.dart';
import 'package:tugas_kalkulator/persegi/persegi.dart';
import 'package:tugas_kalkulator/segitiga/segitiga.dart';
import 'package:tugas_kalkulator/trapesium/trapesium.dart';
import 'Route_Name.dart';
import 'package:tugas_kalkulator/menu.dart';

class AppPages {
  static final pages = [
    GetPage(name: Route.Menu,
            page: () => MenuPage(),
    ),
    GetPage(name: Route.Segitiga,
      page: () => SegitigaPage(),
      binding: segitigaC()
    ),
    GetPage(name: Route.Persegi,
      page: () => PersegiPage(),
      binding: persegiC()
    ),
    GetPage(name: Route.Trapesium,
      page: () => TrapesiumPage(),
      binding: trapesiumC()
    ),
    GetPage(name: Route.Jajargenjang,
      page: () => JajargenjangPage(),
      binding: jajargenjangC()
    ),
    GetPage(name: Route.Lingkaran,
      page: () => LingkaranPage(),
      binding: lingkaranC()
    ),
  ];
}