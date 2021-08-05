import 'package:json_annotation/json_annotation.dart';
part 'match_model.g.dart';

@JsonSerializable()
class ParticipantMatch {
  ParticipantMatch(
      this.puuId,
      this.championName,
      this.kills,
      this.assists,
      this.deaths,
      this.item0,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.item5,
      this.item6,
      this.summoner1Id,
      this.summoner2Id,
      this.win);


  int puuId;
  String championName;
  int kills;
  int assists;
  int deaths;
  int item0;
  int item1;
  int item2;
  int item3;
  int item4;
  int item5;
  int item6;
  int summoner1Id;
  int summoner2Id;
  bool win;

  factory ParticipantMatch.fromJson(Map<String, dynamic> json) =>
      _$ParticipantMatchFromJson(json);

  Map<String, dynamic> toJson() => _$ParticipantMatchToJson(this);
}
