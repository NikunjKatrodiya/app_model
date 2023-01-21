import 'package:flutter/material.dart';

import '../data/model/cricket_comman.dart';
import 'cricket_data.dart';

class ModelCallingScreen extends StatefulWidget {
  const ModelCallingScreen({Key? key}) : super(key: key);

  @override
  State<ModelCallingScreen> createState() => _ModelCallingScreenState();
}

class _ModelCallingScreenState extends State<ModelCallingScreen> {
  ModelScreen? modelScreen;
  @override
  void initState() {
    
    modelScreen = ModelScreen.fromJson(CricketData.countryData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Model Calling Screen"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "match: ${modelScreen!.match!}",
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "over: ${modelScreen!.over!}",
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Match Time: ${modelScreen!.matchTime!}",
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: modelScreen!.playerList!.length,
                padding: const EdgeInsets.all(15),
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemBuilder: (context, index) => Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Player Name: ${modelScreen!.playerList![index].playerName}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Best Score: ${modelScreen!.playerList![index].bestscore}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "Stickrate: ${modelScreen!.playerList![index].stickrate}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "Innigs: ${modelScreen!.playerList![index].innigs}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
