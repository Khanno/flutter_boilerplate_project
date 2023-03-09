// ignore_for_file: constant_identifier_names

enum Flavor {
  DEV,
  HOM,
  PROD,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'boilerplate - dev';
      case Flavor.HOM:
        return 'boilerplate - hom';
      case Flavor.PROD:
        return 'boilerplate - prod';
      default:
        return 'title';
    }
  }

}
