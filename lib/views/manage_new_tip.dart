import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/controllers/manage_tip_controller.dart';

class ManageTip extends StatelessWidget {
  ManageTip({super.key});
  final ManageTipController manageTipController =
      Get.put(ManageTipController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Tip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Tip Title',
                  hintText: 'Enter your tip title here ...',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Total Amount',
                    hintText: 'Enter your total amount of bill here ...',
                    suffixIcon: Icon(Icons.attach_money)),
              ),
              const SizedBox(height: 20),
              const Text('Tip Percentage'),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Slider(
                      value: 0,
                      onChanged: manageTipController.onUpdateTip,
                      min: 0,
                      max: 30,
                      divisions: 30,
                      label: ' Tip Percentage ',
                    ),
                  ),
                  const Text('0 %'),
                ],
              ),
              const SizedBox(height: 50),
              const CustomLabel(title: 'Tip Amount:', value: '0 \$'),
              const SizedBox(height: 20),
              const CustomLabel(title: 'Total Amount of Bill:', value: '0 \$'),
              const SizedBox(height: 20),
              const CustomLabel(title: 'Previous Bill Amount:', value: '0 \$'),
              const SizedBox(height: 50),
              if (!manageTipController.isUpdate)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: FilledButton(
                      onPressed: manageTipController.addTip,
                      child: const Text('Add Tip'),
                    ),
                  ),
                ),
              if (manageTipController.isUpdate)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: FilledButton(
                      onPressed: manageTipController.addTip,
                      child: const Text('Update Tip'),
                    ),
                  ),
                ),
              if (manageTipController.isUpdate)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: FilledButton(
                      style:
                          FilledButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: manageTipController.addTip,
                      child: const Text('Delete Tip'),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLabel extends StatelessWidget {
  const CustomLabel({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const SizedBox(width: 5),
        Text(value),
      ],
    );
  }
}
