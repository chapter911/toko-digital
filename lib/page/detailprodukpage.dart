import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailProdukPage extends StatefulWidget {
  const DetailProdukPage({Key? key}) : super(key: key);

  @override
  State<DetailProdukPage> createState() => _DetailProdukPageState();
}

class _DetailProdukPageState extends State<DetailProdukPage> {
  int jumlah = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          Get.arguments,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.maxFinite,
                height: 200,
                child: Image.asset(
                  "assets/${Get.arguments.toString().toLowerCase().replaceAll(' ', '')}.png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.maxFinite,
                child: Text(
                  Get.arguments,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                textAlign: TextAlign.justify,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.maxFinite,
                child: const Text(
                  "Variasi Produk",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Extra Pedas",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Kuah Santan",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Porsi Extra",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Plus Bakso",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.maxFinite,
                child: const Text(
                  "Harga Produk",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.maxFinite,
                child: const Text(
                  "Rp. 200.000,-",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.orange),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Jumlah",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (jumlah > 1) {
                              setState(() {
                                jumlah--;
                              });
                            }
                          },
                          child: const Text("-"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "$jumlah",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              jumlah++;
                            });
                          },
                          child: const Text("+"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    ElevatedButton(
                      child: const Text(
                        "Hubungi",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        child: const Text(
                          "Tambahkan Ke Keranjang",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
