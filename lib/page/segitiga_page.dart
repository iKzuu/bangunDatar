import 'package:bangun_datar_kelas_b/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});
  final SegitigaController _segitigaController= Get.put(SegitigaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/segitiga.png", height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Segitiga",style: TextStyle(
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
      color: Colors.cyan,borderRadius: BorderRadius.all(Radius.circular(10))
  ),

  child: Column(

    children : [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: TextFormField(
          onChanged: (value){
            _segitigaController.alas = int.parse(value);
          },
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Alas",
              hintText: "Masukkan Alas",
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
            _segitigaController.tinggi = int.parse(value);
          },
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Tinggi",
              hintText: "Masukkan Tinggi",
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
            _segitigaController.sisiA = int.parse(value);
          },
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Sisi A",
              hintText: "Masukkan Sisi A",
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
            _segitigaController.sisiB = int.parse(value);
          },
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Sisi B",
              hintText: "Masukkan Sisi B",
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
            _segitigaController.sisiC = int.parse(value);
          },
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Sisi C",
              hintText: "Masukkan Sisi C",
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
              _segitigaController.hitungLuas();
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
          _segitigaController.hitungKeliling();
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
      Obx(() => Text(_segitigaController.hasil.value,
        style: TextStyle(color: _segitigaController.textColor.value),
      )),
    ],
  ),
),

        ],
      ),
    );
  }
}
