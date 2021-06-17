import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
          // menyusun tulisan secara horizontal dan di tengah
            Row(children: <Widget>[
          new Text("Transaksi",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ]),
        actions: <Widget>[
          
        ],
      ),
      
//seluruh body dibungkus colum
      body: new ListView(
        children: <Widget>[
          Image.asset("assets/appimages/transaksi.jpeg"),
//setiap bagian pada body dipisahkan container yang berisikan ringkasan aplikasi
          Container(
            color: Colors.white60,
            padding: const EdgeInsets.all(10),
//untuk membuat tampilan secara horizontal digunakan row
            child: Row(
              children: [
                Expanded( // dihabiskan agar tidak terlalu kekiri dan terlalu kekanan
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Data barang',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black
                ),
              ],
            ),
          ),
           Container(
            color: Colors.white60,
            padding: const EdgeInsets.all(10),
//untuk membuat tampilan secara horizontal digunakan row
            child: Row(
              children: [
                Expanded( // dihabiskan agar tidak terlalu kekiri dan terlalu kekanan
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daftar Pesanan',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black
                ),
              ],
            ),
          ),
           Container(
            color: Colors.white60,
            padding: const EdgeInsets.all(10),
//untuk membuat tampilan secara horizontal digunakan row
            child: Row(
              children: [
                Expanded( // dihabiskan agar tidak terlalu kekiri dan terlalu kekanan
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Update Data barang',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
