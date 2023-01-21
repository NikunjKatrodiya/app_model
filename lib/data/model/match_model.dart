class MatchModel{
  final Bastman? bastman;
  final Bowler? bowler;

  MatchModel({this.bastman, this.bowler});
  factory MatchModel.fromJson(Map<String,dynamic>json){
    return MatchModel(
      bastman: Bastman.fromJson(json['bastman']),
      bowler: Bowler.fromJson(json['bowler']),
    );
  }
  
}

class Bowler {
  final String? bowlerName;
  final int? wicket;
  final int? innings;

  Bowler({this.bowlerName, this.wicket, this.innings});
  factory Bowler.fromJson(Map<String,dynamic>json){
    return Bowler(
      bowlerName: json['bowler_name'],
      innings: json['innings'],
      wicket: json['wicket'],

    );
  }

}

class Bastman {
  final String? bastmanName;
  final int? bestscore;
  final int? stickrate;
  final int? innings;

  Bastman({this.bastmanName, this.bestscore, this.stickrate, this.innings});
  factory Bastman.fromJson(Map<String,dynamic>json){
    return Bastman(
      bastmanName: json['bastman_name'],
      bestscore: json['bestscore'],
      stickrate: json['stickrate'],
      innings: json['innings'],
    );
  }
}

