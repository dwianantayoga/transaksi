import 'package:flutter/material.dart';
import './detail_produk.dart'; 

// menggunakan gesture detector dan navigator 
class Daftarpesanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title:
          // menyusun tulisan secara horizontal dan di tengah
            Row(children: <Widget>[
          new Text("Daftar Pesanan",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ]),
        actions: <Widget>[
          
        ],
      ),
      body: ListView( 
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          new GestureDetector( //menggunakan gesture detector agar dapat di klik
            onTap: () {
              Navigator.of(context).push( //menggunakan push agar dapat back ke halaman sebelumnya
                //navigator digunakan untuk menanggil sebuah fungsi atau class
                new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk( //builder memanggil class yang ada di detail produk
                          //kemudian mengirim parameter, untuk menampilkan identitas
                          name: "#87232319",
                          description: "Mei 15, 2021 at 6:00PM",
                          price: 200000,
                          image: "gitar_satu.jpeg",
                          star:0 ,
                        )),
              );
            },
            //memanggil class local produkbox
            child: ProductBox(
              //berisikan parameter yang dibutuhkan produkbox
              nama: "#87232319",
              deskripsi: "Mei 15, 2021 at 6:00PM",
              harga: 200000,
              image: "gitar_satu.jpeg",
              star: 0,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "#971829219",
                          description: "Mei 20,2021 at 8:00PM",
                          price: 1500000,
                          image: "drum_dua.jpeg",
                          star: 0,
                        )),
              );
            },
            child: ProductBox(
              nama: "#971829219",
              deskripsi: "Mei 20,2021 at 8:00PM",
              harga: 1500000,
              image: "drum_dua.jpeg",
              star: 0,
            ),
          ),
           Container(
            color: Colors.red[400],
            padding: const EdgeInsets.all(10),
//untuk membuat tampilan secara horizontal digunakan row
            child: Row(
              children: [
                Expanded( // dihabiskan agar tidak terlalu kekiri dan terlalu kekanan
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tolak',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    ),
     Container(
            color: Colors.green[400],
            padding: const EdgeInsets.all(10),
//untuk membuat tampilan secara horizontal digunakan row
            child: Row(
              children: [
                Expanded( // dihabiskan agar tidak terlalu kekiri dan terlalu kekanan
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Proses',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    )
    ]));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
    //penangkapan parameter yang diterima dari myhomepage
      {Key key, this.nama, this.deskripsi, this.harga, this.image, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String image;
  final int star;
  final children = <Widget>[];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.yellow,
      ));
    }// for merupakan syntax yg digunakan untuk menampilkan berapa jumlah bintang

    return Container(
      padding: EdgeInsets.all(10),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset( // menggunakan image lokal
            "assets/appimages/" + image,
            width: 150,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Text(
                    this.nama, //untuk nama
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(this.deskripsi), //deskripsi produk
                  Text(
                    "Harga :" + this.harga.toString(), // harga produk
                    style: TextStyle(color: Colors.orange),
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: children,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
