import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LingkaranController extends GetxController {
  double jariJari = 0;

  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas() {
    double luas = 3.14 * jariJari * jariJari;
    hasil.value = "Hasil Perhitungan Luas 3.14 x $jariJari x $jariJari = $luas";
    textColor.value = Colors.green;
  }

  void hitungKeliling() {
    double keliling = 2 * 3.14 * jariJari;
    hasil.value = "Hasil Perhitungan Keliling 2 x 3.14 x $jariJari = $keliling";
    textColor.value = Colors.orange;
  }
}