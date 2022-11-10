void main() {
  InternetServiceProvider serviceProvider = InternetServiceProxy(Zain());
  serviceProvider.visitSite("youtube.com");
  serviceProvider.visitSite("twitter.com");
}

abstract class InternetServiceProvider {
  void visitSite(String site);
}

class Zain implements InternetServiceProvider {
  @override
  void visitSite(String site) {
    print("${site} visited successfully");
  }
}

class InternetServiceProxy implements InternetServiceProvider {
  late Zain serviceProvider;
  InternetServiceProxy(this.serviceProvider);
  List<String> blockedSites = ["youtube.com", "facebook.com"];

  @override
  void visitSite(String site) {
    if (blockedSites.contains(site)) {
      print("Blocked Site");
    } else {
      serviceProvider.visitSite(site);
    }
  }
}
