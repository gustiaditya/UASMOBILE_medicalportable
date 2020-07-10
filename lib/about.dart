import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Detail Aplikasi"),
        centerTitle: true,
      ),
      body: ListView(children: <Widget>[
        Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/20476.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(right: 16, left: 16),
          child: Column(children: <Widget>[
            Text(
              '  Hidup sehat menandakan hati yang kuat, bak kata pepatah mengkumandangkan pentingnya menjaga kesehatan> Sebuah aplikasi hadir untuk membantu dalam mengatasi permasalahan anda dalam kesehatan. MedicalPortable dengan fiturnya yang ditambahkan atau di request menyebabkan masyarakat sangat dimudahkan disini.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' Melalui Aplikasi ini, user dapat melakukan request penambahan fitur ataupun hal lain sebagainya yang berhubungan dengan kesehatan.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ]),
        )
      ]),
    );
  }
}
