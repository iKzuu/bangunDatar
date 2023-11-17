import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SegitigaController extends GetxController {
  int alas = 0;
  int tinggi = 0;
  int sisiA = 0;
  int sisiB = 0;
  int sisiC = 0;

  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas() {
    double luas = 0.5 * alas * tinggi;
    hasil.value = "Hasil Perhitungan Luas 0.5 x $alas x $tinggi = $luas";
    textColor.value = Colors.green;
  }

  void hitungKeliling() {
    int keliling = sisiA + sisiB + sisiC;
    hasil.value = "Hasil Perhitungan Keliling $sisiA + $sisiB + $sisiC = $keliling";
    textColor.value = Colors.orange;
  }
}