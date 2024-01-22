import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_kalkulator/route/Route_Name.dart' as MyRoutes;

void main() {
  runApp(MaterialApp(
    home: MenuPage(),
  ));
}

class MenuPage extends StatelessWidget {
  void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF183D3D),
      body: Center(
        child: Container(
          height: 650.0,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              buildMenuItem(
                'Segitiga',
                'images/1.png',
                    () => Get.toNamed(MyRoutes.Route.Segitiga),
              ),
              buildMenuItem(
                'Persegi',
                'images/2.png',
                    () => Get.toNamed(MyRoutes.Route.Persegi),
              ),
              buildMenuItem(
                'Trapesium',
                'images/3.png',
                    () => Get.toNamed(MyRoutes.Route.Trapesium),
              ),
              buildMenuItem(
                'Jajargenjang',
                'images/4.png',
                    () => Get.toNamed(MyRoutes.Route.Jajargenjang),
              ),
              buildMenuItem(
                'Lingkaran',
                'images/5.png',
                    () => Get.toNamed(MyRoutes.Route.Lingkaran),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(String title, String imagePath, VoidCallback onPressed) {
    return Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      color: Color(0xFF93B1A6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 100,
          ),
          SizedBox(width: 1.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF183D3D),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Color(0xFF5C8374),
                      minimumSize: Size(50, 50),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF183D3D),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
