import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_digital/page/pengirimanpage.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({Key? key}) : super(key: key);

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  final TextEditingController _informasi = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  int jumlahmie1 = 0, jumlahmie2 = 0, jumlahpromo1 = 0, jumlahpromo2 = 0;

  String metodebayar = 'Bayar DiTempat';
  String metodebeli = 'Kunjungi Toko';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Keranjang Belanja",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.shop),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Produk",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                      child: Text(
                    "+ Tambah",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 10,
                child: Row(children: [
                  Image.asset(
                    'assets/miegorengjamur.png',
                    scale: 3,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Janjie Mie",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Rp. 200.000,-",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.orange),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (jumlahmie1 > 0) {
                                setState(() {
                                  jumlahmie1--;
                                });
                              }
                            },
                            child: const Text("-"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "$jumlahmie1",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                jumlahmie1++;
                              });
                            },
                            child: const Text("+"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.delete,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 10,
                child: Row(children: [
                  Image.asset(
                    'assets/miegorengjamur.png',
                    scale: 3,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Janjie Mie",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Rp. 200.000,-",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.orange),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (jumlahmie2 > 0) {
                                setState(() {
                                  jumlahmie2--;
                                });
                              }
                            },
                            child: const Text("-"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "$jumlahmie2",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                jumlahmie2++;
                              });
                            },
                            child: const Text("+"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.delete,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(Icons.percent),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Paket Promo",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                      child: Text(
                    "+ Tambah",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 10,
                child: Row(children: [
                  Image.asset(
                    'assets/nasigorengcampurpedas.png',
                    scale: 3,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Paket Makan 5 Orang Lebih Murah",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Rp. 200.000,-",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.orange),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (jumlahpromo1 > 0) {
                                setState(() {
                                  jumlahpromo1--;
                                });
                              }
                            },
                            child: const Text("-"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "$jumlahpromo1",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                jumlahpromo1++;
                              });
                            },
                            child: const Text("+"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.delete,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 10,
                child: Row(children: [
                  Image.asset(
                    'assets/miebihunserenade.png',
                    scale: 3,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Selera Pedas Makanan Korea",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Rp. 200.000,-",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.orange),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (jumlahpromo2 > 0) {
                                setState(() {
                                  jumlahpromo2--;
                                });
                              }
                            },
                            child: const Text("-"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "$jumlahpromo2",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                jumlahpromo2++;
                              });
                            },
                            child: const Text("+"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.delete,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Tambahan Informasi Pesanan",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: _informasi,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.note),
                  labelText: "Misal, untuk minumannya tanpa Gula",
                  prefixStyle: const TextStyle(
                      color: Colors.teal, fontWeight: FontWeight.w600),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: double.maxFinite,
                color: Colors.grey[300],
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Informasi Pelanggan"),
                    TextField(
                      controller: _informasi,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        labelText: "Nama",
                        prefixStyle: const TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.w600),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _phone,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone_android),
                        labelText: "Nomor Kontak",
                        prefixStyle: const TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.w600),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    DropdownButton(
                      isExpanded: true,
                      value: metodebayar,
                      items: <String>[
                        'Bayar DiTempat',
                        'Go Pay',
                        'Grab',
                        'Transfer Bank'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                          ),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        metodebayar = value!;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButton(
                      isExpanded: true,
                      value: metodebeli,
                      items: <String>['Kunjungi Toko', 'Go Send', 'Grab Send']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                          ),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        metodebeli = value!;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Kode Promo",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(Icons.airplane_ticket),
                      Text("4RT345")
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: double.maxFinite,
                color: Colors.grey[300],
                padding: const EdgeInsets.all(10),
                child: Table(
                  children: const [
                    TableRow(
                      children: [
                        Text("Total Belanja"),
                        Text(
                          "Rp. 3.000.000",
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Ongkos Kirim"),
                        Text(
                          "-",
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Potongan Promo"),
                        Text(
                          "Rp. 50.000",
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          "Total Pembelian",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rp. 3.000.000",
                          textAlign: TextAlign.end,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("Hapus keranjang"),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const PengirimanPage());
                      },
                      child: const Text("Lanjutkan Pengiriman"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
