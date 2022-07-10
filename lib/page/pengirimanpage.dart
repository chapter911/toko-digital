import 'package:flutter/material.dart';

class PengirimanPage extends StatefulWidget {
  const PengirimanPage({Key? key}) : super(key: key);

  @override
  State<PengirimanPage> createState() => _PengirimanPageState();
}

class _PengirimanPageState extends State<PengirimanPage> {
  final TextEditingController _alamat = TextEditingController();
  final TextEditingController _informasi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Pengiriman Pesanan",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _alamat,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fmd_good_sharp),
                labelText: "Alamat",
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
              controller: _informasi,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.note),
                labelText: "Informasi Tambahan",
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
            const Text(
              "Hubungi Pesanan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Mbak Su"),
                            ),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Pak Raden"),
                            ),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Kak Kuku"),
                            ),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Kiko"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text(
                  "HUBUNGI",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "BUAT PESANAN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
