import 'package:bangun_datar_kelas_b/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class PersegipanjangPage extends StatelessWidget {
  PersegipanjangPage({super.key});
  final PersegipanjangController _persegipanjangController= Get.put(PersegipanjangController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/persegipanjang.png", height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi Panjang",style: TextStyle(
                color: Colors.black
            ),
            ),
          ),
          Container(
            child: Text("Persegi panjang merupakan bangun datar yang memiliki dua pasang sisi sama panjang dan sejajar serta besar semua sudutnya adalah 90⁰"),
            decoration: BoxDecoration(
                color: Colors.green.shade300,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text("Persegi adalah segi empat yang keempat sisinya sama panjang dan keempat sudutnya siku-siku atau 90°."),
          // ),

          Container(
            decoration: BoxDecoration(
                color: Colors.pink,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children : [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: TextFormField(
                    onChanged: (value){
                      _persegipanjangController.panjang = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Panjang",
                        hintText: "Masukkan Panjang",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: TextFormField(
                    onChanged: (value){
                      _persegipanjangController.lebar = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Lebar",
                        hintText: "Masukkan Lebar",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10, vertical:10),
                      child: ElevatedButton(onPressed: (){
                        _persegipanjangController.hitungLuas();
                      }, child: Text("Hitung Luas"),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green)
                        ),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10, vertical:10),
                  child: ElevatedButton(onPressed: (){
                    _persegipanjangController.hitungKeliling();
                  }, child: Text("Hitung Keliling"),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange)
                    ),),
                ),
              ],
            ),
          ),
Container(
  decoration: BoxDecoration(
      color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10))
  ),
  margin: const EdgeInsets.all(8.0),
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
      Obx(() => Text(_persegipanjangController.hasil.value,
        style: TextStyle(color: _persegipanjangController.textColor.value),
      )),
    ],
  ),
),

        ],
      ),
    );
  }
}
