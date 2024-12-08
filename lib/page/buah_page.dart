import 'package:buah_app/data/buah_data.dart';
import 'package:buah_app/model/buah_model.dart';
import 'package:buah_app/page/detailbuah_page.dart';
import 'package:flutter/material.dart';

class BuahPage extends StatelessWidget {
  const BuahPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buah-Buahan"),backgroundColor: Colors.cyan,),
      body: ListView.builder(
        itemCount: BuahData.itemCount,
        itemBuilder: (context,index){
          BuahModel buah = BuahData.getItemBuah(index)!;
          return GestureDetector(
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>DetailbuahPage(
                buah: buah,
              )));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 7,
                color: Colors.blueAccent[900],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(buah.gambarBuah!,
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                      ),
                      Text(
                        buah.namaBuah!,
                        style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}