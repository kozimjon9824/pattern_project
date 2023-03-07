class AppIcons {
  AppIcons._();
  static final success = getPath('ic_success');
  static final error = getPath('ic_error');
  static final info = getPath('ic_info');
  static final en = getPath('ic_en');
  static final ru = getPath('ic_ru');
  static final uz = getPath('ic_uz');
  static final activeHome = getPath('ic_active_home');
  static final home = getPath('ic_home');
  static final briefcase = getPath('ic_briefcase');
  static final activeBriefcase = getPath('ic_active_briefcase');
  static final profile = getPath('ic_profile');
  static final activeProfile = getPath('ic_active_profile');
  static String getPath(String iconName) => 'assets/icons/$iconName.svg';
}

class AppImages {
  AppImages._();

  static final appLogo = getImagePath('app_logo');

  static String getImagePath(String iconName) => 'assets/images/$iconName.svg';
}
