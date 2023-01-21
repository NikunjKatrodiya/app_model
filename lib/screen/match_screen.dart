import 'package:flutter/material.dart';

import '../data/model/match_model.dart';
import 'match_data.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  MatchModel? matchModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    matchModel=MatchModel.fromJson(MatchData.playerData);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Column(
        children: [
          Text("${matchModel!.bastman!.innings}"),
          Text("bastman : ${matchModel!.bastman!.bastmanName}"),
          Text("bowler : ${matchModel!.bowler!.bowlerName}"),
        ],
      )),
    );
  }
}
