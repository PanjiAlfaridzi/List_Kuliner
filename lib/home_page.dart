import 'package:flutter/material.dart';
import 'package:list_kuliner/list_item.dart';
import 'package:list_kuliner/makanan.dart';
import 'package:list_kuliner/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Makanan> listMenu = Makanan.listMakanan;

    return Column(
      children: [
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.list_alt_sharp, size: 30),
            SizedBox(width: 10),
            Text('List Kuliner', style: textHeader1),
          ],
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: listMenu.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 8), // Jarak antar item
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 178, 178, 178),
                      offset: Offset(1.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: ListItem(makanan: listMenu[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
