import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final  textColor = Rx<Color>(Colors.black);


  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan Luas dari $sisi x $sisi = $hitung";
    textColor.value = Colors.green;
  }

  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi = $hitung";
    textColor.value = Colors.orange;
  }

}