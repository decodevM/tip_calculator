import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/components/tip_card.dart';
import '/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tip Smart'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Add Tip'),
        icon: const Icon(Icons.add),
        onPressed: homeController.addTip,
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: 20,
          padding: const EdgeInsets.all(20),
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemBuilder: (context, index) => CupertinoButton(
            onPressed: () => homeController.showTip(index),
            padding: EdgeInsets.zero,
            child: const TipCard(),
          ),
        ),
      ),
    );
  }
}
