import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PersegipanjangController extends GetxController{
  int panjang = 0;
  int lebar = 0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas() {
    int luas = panjang * lebar;
    hasil.value = "Hasil Perhitungan Luas $panjang x $lebar = $luas";
    textColor.value = Colors.green;
  }

  void hitungKeliling() {
    int keliling = 2 * (panjang + lebar);
    hasil.value = "Hasil Perhitungan Keliling 2 x ($panjang + $lebar) = $keliling";
    textColor.value = Colors.orange;
  }

}