class AppIcons {
  AppIcons._();

  static final activeHome = getPath('ic_active_home');
  static final home = getPath('ic_home');

  static String getPath(String iconName) => 'assets/icons/$iconName.svg';
}

class AppImages {
  AppImages._();

  static final appLogo = getImagePath('app_logo');

  static String getImagePath(String iconName) => 'assets/images/$iconName.svg';
}
