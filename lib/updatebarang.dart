import 'package:flutter/material.dart';
import './detail_produk.dart'; 

// menggunakan gesture detector dan navigator 
class Updatebarang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title:
          // menyusun tulisan secara horizontal dan di tengah
            Row(children: <Widget>[
          new Text("Update Data Barang",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
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
                          name: "GITAR",
                          description: "Jumlah Stok Barang",
                          price: 200000,
                          image: "gitar_satu.jpeg",
                          star: 0,
                        )),
              );
            },
            //memanggil class local produkbox
            child: ProductBox(
              //berisikan parameter yang dibutuhkan produkbox
              nama: "GITAR",
              deskripsi: "Jumlah Stok Barang",
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
                          name: "DRUM",
                          description: "Jumlah Stok Barang",
                          price: 1500000,
                          image: "drum_dua.jpeg",
                          star: 0,
                        )),
              );
            },
            child: ProductBox(
              nama: "DRUM",
              deskripsi: "Jumlah Stok Barang ",
              harga: 1500000,
              image: "drum_dua.jpeg",
              star: 0,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "PIANO",
                          description: "Jumlah Stok Barang ",
                          price: 15000000,
                          image: "piano_lima.jpeg",
                          star: 0,
                        )),
              );
            },
            child: ProductBox(
              nama: "PIANO",
              deskripsi: "Jumlah Stok Barang",
              harga: 15000000,
              image: "piano_lima.jpeg",
              star: 0,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "SEXOPHONE",
                          description: "Jumlah Stok Barang ",
                          price: 600000,
                          image: "sexophone_empat.jpeg",
                          star: 0,
                        )),
              );
            },
            child: ProductBox(
              nama: "SEXAPHONE",
              deskripsi: "Jumlah Stok Barang ",
              harga: 600000,
              image: "sexophone_empat.jpeg",
              star: 0,
            ),
          ),
          
        ],
      ),
    );
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
