abstract class MatchRepository{
  Future getMatchesIdsByPuuid(String puuid);
  Future getMatchDetails(String matchId);
}