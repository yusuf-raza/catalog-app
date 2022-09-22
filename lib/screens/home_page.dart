

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catalog App"),centerTitle: true,),
      body: Container(
        child: const Center(child: Text("my app"),),
      ),
      drawer: const Drawer(elevation: 10,),
    );
  }
}
