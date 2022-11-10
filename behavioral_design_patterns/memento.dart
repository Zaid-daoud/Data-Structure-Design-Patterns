import 'dart:collection';

void main() {
  Game game = Game("Zaid", 0);
  Caretaker caretaker = Caretaker();
  print(game.playerScore);
  caretaker.save(game);
  print(game.playerScore);
  game.playerScore = 1;
  caretaker.save(game);
  print(game.playerScore);
  caretaker.revert(game);
  print(game.playerScore);
}

// originator
class Game {
  String playerName;
  int playerScore;
  Game(this.playerName, this.playerScore);
  CheckPoint save() {
    return CheckPoint(playerName, playerScore);
  }

  void revert(CheckPoint point) {
    this.playerName = point.playerName;
    this.playerScore = point.playerScore;
  }
}

// memento
class CheckPoint {
  late String playerName;
  late int playerScore;

  CheckPoint(this.playerName, this.playerScore);
}

class Caretaker {
  Queue<CheckPoint> checkPoints = Queue<CheckPoint>();

  void save(Game game) {
    checkPoints.addLast(game.save());
  }

  void revert(Game game) {
    checkPoints.removeLast();
    game.revert(checkPoints.last);
  }
}
