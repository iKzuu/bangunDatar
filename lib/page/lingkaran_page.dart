import 'package:bangun_datar_kelas_b/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});
  final LingkaranController _lingkaranController= Get.put(LingkaranController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lingkaran Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/ling.png", height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Lingkaran",style: TextStyle(
                color: Colors.black
            ),
            ),
          ),
          Container(
            child: Text("Persegi adalah segi empat yang keempat sisinya sama panjang dan keempat sudutnya siku-siku atau 90°."),
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
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10),
                    child: TextFormField(
                      onChanged: (value){
                        _lingkaranController.jariJari = double.parse(value);
                      },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Jari Jari",
                          hintText: "Masukkan Jari Jari",
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

                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10, vertical:10),
                      child: ElevatedButton(onPressed: (){
                        _lingkaranController.hitungLuas();
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
                    _lingkaranController.hitungKeliling();
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
      Obx(() => Text(_lingkaranController.hasil.value,
        style: TextStyle(color: _lingkaranController.textColor.value),
      )),
    ],
  ),
),

        ],
      ),
    );
  }
}
