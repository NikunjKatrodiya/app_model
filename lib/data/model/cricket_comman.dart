class ModelScreen {
  final String? countryName;
  final String? match;
  final int? over;
  final String? matchTime;
  final List<PlayerList>? playerList;

  ModelScreen({this.countryName="", this.match="", this.over, this.matchTime="", this.playerList,});

  factory ModelScreen.fromJson(Map<String, dynamic> json) {
    return ModelScreen(
      countryName: json['country_name'],
      match: json['match'],
      over: json['over'],
      matchTime: json['match_time'],
      playerList: List<PlayerList>.from(json["player_list"].map((value) => PlayerList.fromJson(value))),
    );
  }
}

class PlayerList {
  final String? playerName;
  final int? bestscore;
  final int? stickrate;
  final int? innigs;

  PlayerList({this.playerName="", this.bestscore, this.stickrate, this.innigs});

  factory PlayerList.fromJson(Map<String, dynamic> json) {
    return PlayerList(
      playerName: json['playeName'],
      bestscore: json['bestscore'],
      innigs: json['innigs'],
      stickrate: json['stickrate']
    );
  }
}