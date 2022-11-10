void main() {
  Game chess = Chess();
  chess.play();
  Game soccer = Soccer();
  soccer.play();
}

abstract class Game {
  void initizalize();
  void start();
  void end();
  void play() {
    initizalize();
    start();
    end();
  }
}

class Chess extends Game {
  @override
  void end() {
    print("stop playing chess");
  }

  @override
  void initizalize() {
    print("initializing chess game");
  }

  @override
  void start() {
    print("start playing chess");
  }
}

class Soccer extends Game {
  @override
  void end() {
    print("stop playing soccer");
  }

  @override
  void initizalize() {
    print("initializing soccer game");
  }

  @override
  void start() {
    print("start playing soccer");
  }
}
