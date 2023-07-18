int calcTeamScore(Map<String, int> team) {
  int normal_points = team['Free throws'] ?? 0;
  int double_points = (team['2 pointer'] ?? 0) * 2;
  int triple_points = (team['3 pointer'] ?? 0) * 3;

  return normal_points + double_points + triple_points;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAScore = 0;
  int teamBScore = 0;

  teamAScore = calcTeamScore(teamA);
  teamBScore = calcTeamScore(teamB);

  if (teamAScore == teamBScore) return 0;

  if (teamAScore > teamBScore) return 2;

  return 1;
}
