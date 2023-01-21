import 'package:app_model/data/model/common_model.dart';
import 'package:flutter/material.dart';

import 'app_data.dart';

class CommonModelScreen extends StatefulWidget {
  const CommonModelScreen({super.key});

  @override
  State<CommonModelScreen> createState() => _CommonModelScreenState();
}

class _CommonModelScreenState extends State<CommonModelScreen> {
  CommonModel? commonModel;
  @override
  void initState() {
    commonModel = CommonModel.fromJson(AppData.fruitsData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Common Model Screen"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "country Name : ${commonModel!.country!}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Divider(),
                  separatorBuilder: (context, index) => Container(
                        height: 100,
                        width: 300,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text(
                              "Fruits Name:${commonModel!.fruitsList![index].name}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Color:${commonModel!.fruitsList![index].color}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "State:${commonModel!.fruitsList![index].state}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Price:${commonModel!.fruitsList![index].price}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                  itemCount: commonModel!.fruitsList!.length),
            )
          ],
        ),
      ),
    );
  }
}
