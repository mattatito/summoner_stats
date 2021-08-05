import 'package:summoner_stats/models/match_model.dart';

abstract class MatchRepository {
  Future<List<String>> getMatchesIdsByPuuid(String puuId);
  Future<List<ParticipantMatch>> getMatchesDetails(List<String> matchesIds, String puuId);
}
