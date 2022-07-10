import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MembershipPage extends StatefulWidget {
  const MembershipPage({Key? key}) : super(key: key);

  @override
  State<MembershipPage> createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Membership",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                tampilDialog("Membership A", "30.000");
              },
              child: Card(
                color: Colors.teal,
                elevation: 10,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Membership A",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(5),
                        child: const Text("Syarat"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                tampilDialog("Membership B", "80.000");
              },
              child: Card(
                color: Colors.teal,
                elevation: 10,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Membership B",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(5),
                        child: const Text("Syarat"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                tampilDialog("Membership A", "150.000");
              },
              child: Card(
                color: Colors.teal,
                elevation: 10,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Reseller dan Grosir",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(5),
                        child: const Text("Syarat"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void tampilDialog(String member, String harga) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.orange,
          child: Center(
            child: Text(
              member,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        titlePadding: const EdgeInsets.all(0),
        content: Text(
            "Informasi Syarat $member\n- Follow Sosial Media\n- Belanja minimal $harga"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text(
              "TUTUP",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
