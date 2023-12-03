import 'package:flutter/material.dart';

import 'InformationPage.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController vanController = TextEditingController();
  TextEditingController anhController = TextEditingController();
  String diemTB = 'Điểm TB';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 111, 245, 116),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'TINH DIEM TRUNG BINH',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 36.0, left: 20.0, right: 20.0),
        child: Column(children: [
          TextField(
            controller: vanController,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              hintText: 'Nhập Điểm Văn',
              labelText: 'Điểm Văn',
            ),
          ),
          const SizedBox(height: 20.0),
          TextField(
            controller: anhController,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              hintText: 'Nhập Điểm Anh',
              labelText: 'Điểm Anh',
            ),
          ),
          const SizedBox(height: 20.0),
          Text(diemTB),
          const SizedBox(height: 20.0),
          InkWell(
            splashColor: Colors.pink,
            highlightColor: Colors.orange.withOpacity(0.5),
            onTap: () {
              double diemVan = double.parse(vanController.text.trim());
              double diemAnh = double.parse(anhController.text.trim());
              diemTB = ((diemVan + diemAnh) / 2).toStringAsFixed(2);
              setState(() {});
            },
            child: const Text(
              'Tính Điểm TB',
              style: TextStyle(color: Colors.green),
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              const Spacer(flex: 2),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    double diemVan = double.parse(vanController.text.trim());
                    double diemAnh = double.parse(anhController.text.trim());

                    Route route = MaterialPageRoute(
                      builder: (text) => InformationPage(
                        diemVan: diemVan,
                        diemAnh: diemAnh,
                      ),
                    );
                    Navigator.push(context, route);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.greenAccent),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
