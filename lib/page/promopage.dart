import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_digital/page/keranjangpage.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Promo Toko",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 10,
                      child: Row(children: [
                        Image.asset(
                          'assets/promomusik.png',
                          scale: 3,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "PromoPaket Outfit Tahun Baru 2021",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Rp. 200.000,-",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.orange),
                            ),
                            Text(
                              "Rp. 450.000,-",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 10,
                      child: Row(children: [
                        Image.asset(
                          'assets/promomusik.png',
                          scale: 3,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "PromoPaket Outfit Tahun Baru 2021",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Rp. 200.000,-",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.orange),
                            ),
                            Text(
                              "Rp. 450.000,-",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 10,
                      child: Row(children: [
                        Image.asset(
                          'assets/promomusik.png',
                          scale: 3,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "PromoPaket Outfit Tahun Baru 2021",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Rp. 200.000,-",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.orange),
                            ),
                            Text(
                              "Rp. 450.000,-",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        )
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                Get.to(() => const KeranjangPage());
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.grey,
                child: Center(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.shop,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Anda Mempunyai Keranjang",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.chevron_right),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
