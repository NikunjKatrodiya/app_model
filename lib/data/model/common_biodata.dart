import 'package:flutter/material.dart';

class CommonBioData {
  final Info? info;
  final List<Results>? results;

  CommonBioData({this.info, this.results});
  factory CommonBioData.fromJson(Map<String, dynamic> json) {
    return CommonBioData(
      results: List<Results>.from(
          json["results"].map((value) => Results.fromJson(value))),
      info: Info.fromJson(json['info']),
    );
  }
}

class Results {
  final Color? color;
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final Origin? origin;
  final String? image;
  final Location? location;
  final List<String>? episode;

  Results(
      {this.color,
      this.episode,
      this.image,
      this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location});

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      color: json['color'],
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      episode: json['episode'],
      image: json['image'],
      gender: json['gender'],
      origin: Origin.fromJson(json['origin']),
      location: Location.fromJson(json['location']),
    );
  }
}

class Location {
  final String? name;
  final String? url;

  Location({this.name, this.url});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Origin {
  final String? name;
  final String? url;

  Origin({this.name, this.url});

  factory Origin.fromJson(Map<String, dynamic> json) {
    return Origin(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Info {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;

  Info({this.count, this.pages, this.next, this.prev});
  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      count: json['count'],
      pages: json['pages'],
      next: json['next'],
      prev: json['prev'],
    );
  }
}
