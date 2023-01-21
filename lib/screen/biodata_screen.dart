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
    commonBioData=CommonBioData.fromJson(BioData.bioList);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        children: [
          Text("count: ${commonBioData!.info!.count}"),
          Text("count: ${commonBioData!.info!.next}"),
          Text("count: ${commonBioData!.info!.pages}"),
          Text("count: ${commonBioData!.results![0].id}"),
          Text("count: ${commonBioData!.results![1].name}"),
          Image(image: NetworkImage("${commonBioData!.results![2].image})")),
        ],
      ),),
    );
  }
}
