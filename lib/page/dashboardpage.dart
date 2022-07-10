import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_digital/page/detailprodukpage.dart';
import 'package:toko_digital/page/informationpage.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final TextEditingController _cari = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Toko Maju Makmur",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const InformationPage());
            },
            icon: const Icon(Icons.info),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            color: Colors.grey,
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Semua Menu",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Ayam",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Minuman",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Makanan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Juice",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _cari,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                labelText: "pencarian",
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
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.switch_access_shortcut_add_sharp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Ada Promo untuk Kamu",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Flexible(
                  flex: 8,
                  child: SizedBox(
                    height: double.maxFinite,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => const DetailProdukPage(),
                                        arguments: "Mie Goreng Jamur");
                                  },
                                  child: Card(
                                    elevation: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/miegorengjamur.png'),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Mie Goreng Jamur",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "Rp. 200.000,-",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.orange),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => const DetailProdukPage(),
                                        arguments: "Nasi Goreng Campur Pedas");
                                  },
                                  child: Card(
                                    elevation: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/nasigorengcampurpedas.png'),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Nasi Goreng Campur Pedas",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "Rp. 200.000,-",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.orange),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => const DetailProdukPage(),
                                        arguments: "Mie Bihun Serenade");
                                  },
                                  child: Card(
                                    elevation: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/miebihunserenade.png'),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Mie Bihun Serenade",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "Rp. 200.000,-",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.orange),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => const DetailProdukPage(),
                                        arguments: "Mie Nori Tradisional");
                                  },
                                  child: Card(
                                    elevation: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              'assets/mienoritradisional.png'),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Mie Nori Tradisional",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "Rp. 200.000,-",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.orange),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
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
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.orange),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "0821-2131-931",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        color: Colors.white,
                        child: const Icon(
                          Icons.code_rounded,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Member Ship A",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              title: const Text('Favorit'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.shop,
                color: Colors.red,
              ),
              title: const Text('Belanja'),
              onTap: () {},
            ),
            ListTile(
              tileColor: Colors.red,
              leading: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: const Text(
                'Keluar',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
