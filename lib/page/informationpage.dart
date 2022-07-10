import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_digital/page/hubungipage.dart';
import 'package:toko_digital/page/membershippage.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Toko Maju Makmur",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const MembershipPage());
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Membership Tersedia",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Alamat Toko",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "Bintaro Palmerah Jakarta Selatan, Indonesia - 62777",
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Jam Buka",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Table(
                children: [
                  TableRow(
                    children: [
                      const Text("Senin"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.timer),
                          Text("10:00 - 19:00")
                        ],
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text("Selasa"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.timer),
                          Text("10:00 - 19:00")
                        ],
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text("Rabu"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.timer),
                          Text("10:00 - 19:00")
                        ],
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text("Kamis"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.timer),
                          Text("10:00 - 19:00")
                        ],
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text("Jumat"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.timer),
                          Text("10:00 - 19:00")
                        ],
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text("Sabtu"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.timer),
                          Text("10:00 - 19:00")
                        ],
                      ),
                    ],
                  ),
                  const TableRow(
                    children: [
                      Text("Minggu"),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Libur",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.blue[200],
                width: double.maxFinite,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Pada Hari Jumat, jam 12 - 13 Istirahat",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Hubungi Kami",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "Saran, Keluhan, Pertanyaan",
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const HubungiPage());
                },
                child: const Text(
                  "Hubungi",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Sosial Media",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "Ikuti Sosial media kami untuk mendapatkan informasi dan promo yang menarik",
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.facebook_rounded),
                    iconSize: 50,
                    color: Colors.orange,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.tiktok),
                    iconSize: 50,
                    color: Colors.orange,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.whatsapp),
                    iconSize: 50,
                    color: Colors.orange,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Pembayaran Tersedia",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "- Bayar diTempat\n- Go Pay\n- Grab\n- Transfer Bank",
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Pengiriman Tersedia",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "- Kunjungi Toko\n- Go Send\n- Grab Send",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
