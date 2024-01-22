import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'PersegiController.dart'; // Import controller kalkulator persegi

class PersegiPage extends StatefulWidget {
  @override
  _PersegiPageState createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  final PersegiController controller = Get.put(PersegiController()); // Gunakan controller kalkulator persegi

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
          'Kalkulator Luas Persegi',
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
                    controller: controller.sisiController,
                    decoration: InputDecoration(
                      labelText: 'Sisi (cm)',
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
