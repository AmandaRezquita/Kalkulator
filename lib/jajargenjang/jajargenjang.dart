import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'JajargenjangController.dart';

class JajargenjangPage extends StatefulWidget {
  @override
  _JajargenjangPageState createState() => _JajargenjangPageState();
}

class _JajargenjangPageState extends State<JajargenjangPage> {
  final JajargenjangController controller = Get.put(JajargenjangController()); // Gunakan controller kalkulator jajargenjang

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
          'Kalkulator Luas Jajargenjang',
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
              borderRadius: BorderRadius.circular(15.0),
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
                          color: Color(0xFF183D3D),
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
                          color: Color(0xFF183D3D),
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
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'Hitung Luas',
                      style: TextStyle(
                        color: Color(0xFF93B1A6),
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
