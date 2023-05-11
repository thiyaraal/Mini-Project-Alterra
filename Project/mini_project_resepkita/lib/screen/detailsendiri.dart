import 'package:flutter/material.dart';

import '../style/colorsstyle.dart';
import '../style/fontstyle.dart';

class DetailResepAnda extends StatelessWidget {
  final String namamasakan;
  final String bahan;
  final String caramasak;
  const DetailResepAnda(
      {Key? key, required this.bahan, required this.caramasak, required this.namamasakan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(namamasakan)),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              color: ColorStyle().card,
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    caramasak,
                      style: TextCustome().medium.copyWith(fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      bahan,
                      style: TextCustome().regular,
                    )
                  ],
                ),
              ),
            ),
          ),
          Text(bahan),
          Text(caramasak),
        ],
      ),
    );
  }
}
