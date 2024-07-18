import 'package:flutter/material.dart';

import 'package:flutter_application_yeni/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("ekran yüksekliği: $ekranYuksekligi");
    print("ekran genişliği: $ekranGenisligi");
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "EHS",
            style: TextStyle(
                color: yaziRenk1,
                fontFamily: "OpenSans",
                fontSize: ekranGenisligi / (ekranGenisligi / 36)),
          ),
          centerTitle: true,
          backgroundColor: anaRenk,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "Exclusive Health Services",
                style: TextStyle(
                    fontSize: 24, color: anaRenk, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Image.asset("resimler/ehs_logo.jpeg"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(icerik: "Home"),
                  Chip(icerik: "Appoinment"),
                  Chip(icerik: "about us"),
                  Chip(icerik: "Contact Us"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    "Book your treatment safely",
                    style: TextStyle(
                        fontSize: 22,
                        color: yaziRenk2,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "21-22 july Free Consultation",
                      style: TextStyle(
                          fontSize: 24,
                          color: anaRenk,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    "Serkan Oral - Ege Can Şerefoğlu",
                    style: TextStyle(
                      fontSize: ekranGenisligi / (ekranGenisligi / 24),
                      color: yaziRenk2,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "\$0.00",
                    style: TextStyle(
                      fontSize: ekranGenisligi / (ekranGenisligi / 34),
                      color: anaRenk,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: anaRenk,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      child: Text(
                        "Book Now",
                        style: TextStyle(color: yaziRenk1, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Chip extends StatelessWidget {
  String icerik;
  Chip({
    required this.icerik,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: anaRenk),
        child: Text(
          icerik,
          style: TextStyle(color: yaziRenk1),
        ));
  }
}
