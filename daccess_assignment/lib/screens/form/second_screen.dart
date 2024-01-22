import 'dart:convert';

import 'package:daccess_assignment/api/get_daily_activity.dart';
import 'package:daccess_assignment/model/form_model.dart';
import 'package:daccess_assignment/screens/form/main_form.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueAccent,
                child:
                    // Text(FormModel.fromJson().command.toString())

                    Text(''))
          ],
        ),
      ),
    );
  }
}
