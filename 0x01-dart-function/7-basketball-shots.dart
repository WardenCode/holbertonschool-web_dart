int calcTeamScore(Map<String, int> team) {
  int normal_points = team['Free throws'] ?? 0;
  int double_points = (team['2 pointers'] ?? 0) * 2;
  int triple_points = (team['3 pointers'] ?? 0) * 3;

  return normal_points + double_points + triple_points;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAScore = 0;
  int teamBScore = 0;

  teamAScore = calcTeamScore(teamA);
  teamBScore = calcTeamScore(teamB);

  print(teamAScore);
  print(teamBScore);

  if (teamAScore == teamBScore) return 0;

  if (teamAScore > teamBScore) return 1;

  return 2;
}
