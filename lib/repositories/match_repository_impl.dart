import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:summoner_stats/models/match_model.dart';

import 'match_repository.dart';

class MatchRepositoryImpl implements MatchRepository {
  @override
  Future<List<ParticipantMatch>> getMatchesDetails(
      List<String> matchesIds, String puuId) async {
    List<ParticipantMatch> matchesDetails = [];
    Dio dio = new Dio();
    dio.options.headers['X-Riot-Token'] =
        'RGAPI-681afeca-47f8-4c30-95b5-24f875f9604c';

    for (final matchId in matchesIds) {
      Response response = await dio.get(
          "https://americas.api.riotgames.com/lol/match/v5/matches/$matchId");
      var participantsList = response.data["info"]["participants"];
      for (final item in participantsList) {
        if (item["puuid"] == puuId) {
          Map<String, dynamic> participantMatchMap = item;
          matchesDetails.add(ParticipantMatch.fromJson(participantMatchMap));
        }
      }
    }
    return matchesDetails;
  }

  @override
  Future<List<String>> getMatchesIdsByPuuid(String puuid) async {
    Dio dio = new Dio();
    dio.options.headers['X-Riot-Token'] =
        'RGAPI-681afeca-47f8-4c30-95b5-24f875f9604c';
    Response response = await dio.get(
        "https://americas.api.riotgames.com/lol/match/v5/matches/by-puuid/$puuid/ids?start=0&count=20");
    return response.data.cast<String>();
  }
}
