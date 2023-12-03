

import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  final double diemVan;
  final double diemAnh;
  
  const InformationPage({
    super.key,
    required this.diemVan,
    required this.diemAnh,
    });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Điểm Văn: $diemVan'),
            Text('Điêm Anh: $diemAnh'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: const Text(
                'Next', style: TextStyle(color: Colors.lightGreen),
                ),
              ),

          ],
        ),
      ),
    );
  }
}