import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Color(0xFF00FFD0),
      ),
      body: ListView(
        children : [
          Row(
            children: [
              Expanded(child: CustomMenu(imageAssets: "assets/persegi.png", title: "Persegi")),
              Expanded(child: CustomMenu(imageAssets: "assets/persegi.png", title: "Persegi")),
            ],
          ),
          Row(
            children: [
              CustomMenu(imageAssets: "assets/persegipanjang.png", title: "Persegi Panjang"),
              CustomMenu(imageAssets: "assets/persegipanjang.png", title: "Persegi Panjang"),
            ],
          ),
          CustomMenu(imageAssets: "assets/segitiga.png", title: "Segitiga"),
          CustomMenu(imageAssets: "assets/ling.png", title: "Lingkaran"),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.greenAccent,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAssets, height: 100),
            Text(title,style: TextStyle(
                color: Colors.white
            ),),
          ],
        ),);
  }
}