import 'package:flutter/material.dart';

import '../data/model/common_biodata.dart';
import 'biodata.dart';

class BioDataScreen extends StatefulWidget {
  const BioDataScreen({Key? key}) : super(key: key);

  @override
  State<BioDataScreen> createState() => _BioDataScreenState();
}

class _BioDataScreenState extends State<BioDataScreen> {
  CommonBioData? commonBioData;
  @override
  void initState() {
    // TODO: implement initState
    commonBioData = CommonBioData.fromJson(BioData.bioList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Calling Screen"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              //Text("count: ${commonBioData!.info!.count}"),
              //Text("count: ${commonBioData!.info!.next}"),
              //Text("count: ${commonBioData!.info!.pages}"),
              //Text("count: ${commonBioData!.results![0].id}"),
              //Text("count: ${commonBioData!.results![1].name}"),
              //Image(image: NetworkImage("${commonBioData!.results![2].image}")),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => const Divider(),
                    separatorBuilder: (context, index) => Container(
                          height: 1350,
                          width: 300,
                          color: (commonBioData!.results![index].color),
                          child: Column(
                            children: [
                              Text("count: ${commonBioData!.info!.count}"),
                              Text("pages: ${commonBioData!.info!.pages}"),
                              Text("next: ${commonBioData!.info!.next}"),
                              Text("id: ${commonBioData!.results![index].id}"),
                              Text(
                                  "name: ${commonBioData!.results![index].name}"),
                              Text(
                                  "status: ${commonBioData!.results![index].status}"),
                              Text(
                                  "species: ${commonBioData!.results![index].species}"),
                              Text(
                                  "type: ${commonBioData!.results![index].type}"),
                              Text(
                                  "gender: ${commonBioData!.results![index].gender}"),
                              Text(
                                  "name: ${commonBioData!.results![index].origin!.name}"),
                              Text(
                                  "url: ${commonBioData!.results![index].origin!.url}"),
                              Text(
                                  "name: ${commonBioData!.results![index].location!.name}"),
                              Text(
                                  "url: ${commonBioData!.results![index].location!.url}"),
                              Image.network(
                                  "${commonBioData!.results![index].image}"),
                              Text(
                                  "episode: ${commonBioData!.results![index].episode}"),
                            ],
                          ),
                        ),
                    itemCount: commonBioData!.results!.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
