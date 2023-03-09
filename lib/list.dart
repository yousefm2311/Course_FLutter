// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  double valueSlider = 0;

  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.male,
                              size: 110,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 10, right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.female,
                              size: 110,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "HEIGHT",
                        style: TextStyle(
                            fontSize: 27.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${valueSlider.round()}",
                        style: const TextStyle(
                            fontSize: 27.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 250,
                        child: Slider(
                          value: valueSlider,
                          onChanged: (value) {
                            setState(() {
                              valueSlider = value;
                            });
                          },
                          max: 100,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text('Calculate'),
            )
          ],
        ));
  }
}
