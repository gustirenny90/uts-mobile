import 'package:buah_app/model/buah_model.dart';
import 'package:buah_app/page/buah_page.dart';
import 'package:flutter/material.dart';


class DetailbuahPage extends StatelessWidget {
  BuahModel? buah;  
  DetailbuahPage({super.key, this.buah});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(buah!.namaBuah!),),
      body: SingleChildScrollView(
        child: Column(
        children: [
         SizedBox(
           width: double.infinity,
            child: Image.asset(buah!.gambarBuah!,
            fit: BoxFit.fill,
            ),
          ),
          Text(buah!.namaBuah!,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(buah!.detailBuah!,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
      )
    );
  }
}