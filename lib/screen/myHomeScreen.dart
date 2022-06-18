import 'dart:developer';

import 'package:app_hamro/data/datas.dart';
import 'package:app_hamro/widgets/newsCard.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TAB_BAR_DATA.length,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Mero NEWS'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                ...TAB_BAR_DATA.map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        e['name'].toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    )),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ...TAB_BAR_DATA.map((e) => ListView(
                    children: [
                      ...[1, 2, 4, 5, 6, 6].map((e) => NewsCard()),
                    ],
                  ))
            ],
          )),
    );
  }
}
