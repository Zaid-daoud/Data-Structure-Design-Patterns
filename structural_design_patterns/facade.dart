void main() {
  SmartHomeFacade smartHome = SmartHomeFacade();
  SmartHomeState state = SmartHomeState();
  smartHome.startGaming(state);
  smartHome.stopGaming(state);
}

class SmartHomeState {
  bool camera = false;
  bool playstation = false;
}

class Light {
  bool turnOn() {
    return true;
  }

  bool turnOff() {
    return false;
  }
}

class Camera {
  bool turnOn() {
    return true;
  }

  bool turnOff() {
    return false;
  }
}

class Playstation {
  bool turnOn() {
    return true;
  }

  bool turnOff() {
    return false;
  }
}

class GamingFacade {
  final Playstation _playstation = Playstation();
  final Camera _camera = Camera();

  void startGaming(SmartHomeState state) {
    state.playstation = _playstation.turnOn();
  }

  void stopGaming(SmartHomeState state) {
    state.playstation = _playstation.turnOff();
  }

  void startStreaming(SmartHomeState state) {
    state.camera = _camera.turnOn();
  }

  void stopStreaming(SmartHomeState state) {
    state.camera = _camera.turnOff();
  }
}

class SmartHomeFacade {
  GamingFacade _gamingFacade = GamingFacade();
  Light _light = Light();
  void startGaming(SmartHomeState state) {
    _gamingFacade.startGaming(state);
    _light.turnOn();
  }

  void stopGaming(SmartHomeState state) {
    _gamingFacade.stopGaming(state);
    _light.turnOff();
  }
}
