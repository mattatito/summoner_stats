import 'package:mobx/mobx.dart';
import 'package:summoner_stats/models/match_model.dart';
import 'package:summoner_stats/repositories/match_repository_impl.dart';
part 'dashboard_store.g.dart';

class DashBoardStore = _DashBoardStore with _$DashBoardStore;

abstract class _DashBoardStore with Store {
  @observable
  List<ParticipantMatch> playerMatchesDetails;

  final repository = MatchRepositoryImpl();

  @action
  Future start(String puuid) async{
    var playerMatches = await repository.getMatchesIdsByPuuid(puuid);
    playerMatchesDetails = await repository.getMatchesDetails(playerMatches, puuid);
  }
}