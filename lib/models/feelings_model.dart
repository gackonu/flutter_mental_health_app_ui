class FeelingsModel {
  String iconPath;
  String name;

  FeelingsModel({
    required this.iconPath,
    required this.name
  });

  static List<FeelingsModel> getFeelings(){
    List <FeelingsModel> feelings = [];

    FeelingsModel(iconPath: 'assets/icons/badly.svg', name: 'Badly');
    FeelingsModel(iconPath: 'assets/icons/fine.svg', name: 'Fine');
    FeelingsModel(iconPath: 'assets/icons/well.svg', name: 'Well');
    FeelingsModel(iconPath: 'assets/icons/excellent.svg', name: 'Excellent');

    return feelings;
  }
}