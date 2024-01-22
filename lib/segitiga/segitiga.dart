import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SegitigaController.dart';

class SegitigaPage extends StatefulWidget {
  @override
  _SegitigaPageState createState() => _SegitigaPageState();
}

class _SegitigaPageState extends State<SegitigaPage> {
  final SegitigaController controller = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF183D3D),
      appBar: AppBar(
        backgroundColor: Color(0xFF93B1A6),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF183D3D),
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Kalkulator Luas Segitiga',
          style: TextStyle(
            color: Color(0xFF183D3D),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 500.0,
          child: Card(
            color: Color(0xFF93B1A6),
            elevation: 10,
            margin: EdgeInsets.all(40.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0), // Tambahkan border radius
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: controller.alasController,
                    decoration: InputDecoration(
                      labelText: 'Alas (cm)',
                      labelStyle: TextStyle(
                        color: Color(0xFF183D3D),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF183D3D), // Warna garis bawah saat form difokuskan
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextFormField(
                    controller: controller.tinggiController,
                    decoration: InputDecoration(
                      labelText: 'Tinggi (cm)',
                      labelStyle: TextStyle(
                        color: Color(0xFF183D3D),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF183D3D), // Warna garis bawah saat form difokuskan
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      controller.hitungLuas();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF183D3D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Tambahkan border radius pada button
                      ),
                    ),
                    child: Text(
                      'Hitung Luas',
                      style: TextStyle(
                        color: Color(0xFF93B1A6), // Warna teks tombol
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Obx(
                        () => Text(
                      controller.hasilLuas.value,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF183D3D),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
